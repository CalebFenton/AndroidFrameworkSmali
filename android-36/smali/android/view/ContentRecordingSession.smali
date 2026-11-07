.class public final Landroid/view/ContentRecordingSession;
.super Ljava/lang/Object;
.source "ContentRecordingSession.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ContentRecordingSession$Builder;,
        Landroid/view/ContentRecordingSession$TargetUid;,
        Landroid/view/ContentRecordingSession$RecordContent;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/ContentRecordingSession;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist RECORD_CONTENT_DISPLAY:I = 0x0

.field public static final blacklist RECORD_CONTENT_TASK:I = 0x1

.field public static final blacklist TARGET_UID_FULL_SCREEN:I = -0x1

.field public static final blacklist TARGET_UID_UNKNOWN:I = -0x2

.field public static final blacklist TASK_ID_UNKNOWN:I = -0x1


# instance fields
.field private blacklist mContentToRecord:I

.field private blacklist mDisplayToRecord:I

.field private blacklist mTargetUid:I

.field private blacklist mTaskId:I

.field private blacklist mTokenToRecord:Landroid/os/IBinder;

.field private blacklist mVirtualDisplayId:I

.field private blacklist mWaitingForConsent:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 515
    new-instance v0, Landroid/view/ContentRecordingSession$1;

    invoke-direct {v0}, Landroid/view/ContentRecordingSession$1;-><init>()V

    sput-object v0, Landroid/view/ContentRecordingSession;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ContentRecordingSession;->mTaskId:I

    .line 74
    iput v0, p0, Landroid/view/ContentRecordingSession;->mVirtualDisplayId:I

    .line 79
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    .line 88
    iput v0, p0, Landroid/view/ContentRecordingSession;->mDisplayToRecord:I

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    .line 105
    iput-boolean v1, p0, Landroid/view/ContentRecordingSession;->mWaitingForConsent:Z

    .line 108
    const/4 v0, -0x2

    iput v0, p0, Landroid/view/ContentRecordingSession;->mTargetUid:I

    .line 114
    return-void
.end method

.method constructor blacklist <init>(IIIILandroid/os/IBinder;ZI)V
    .registers 13
    .param p1, "taskId"    # I
    .param p2, "virtualDisplayId"    # I
    .param p3, "contentToRecord"    # I
    .param p4, "displayToRecord"    # I
    .param p5, "tokenToRecord"    # Landroid/os/IBinder;
    .param p6, "waitingForConsent"    # Z
    .param p7, "targetUid"    # I

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ContentRecordingSession;->mTaskId:I

    .line 74
    iput v0, p0, Landroid/view/ContentRecordingSession;->mVirtualDisplayId:I

    .line 79
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    .line 88
    iput v0, p0, Landroid/view/ContentRecordingSession;->mDisplayToRecord:I

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    .line 105
    iput-boolean v1, p0, Landroid/view/ContentRecordingSession;->mWaitingForConsent:Z

    .line 108
    const/4 v0, -0x2

    iput v0, p0, Landroid/view/ContentRecordingSession;->mTargetUid:I

    .line 230
    iput p1, p0, Landroid/view/ContentRecordingSession;->mTaskId:I

    .line 231
    iput p2, p0, Landroid/view/ContentRecordingSession;->mVirtualDisplayId:I

    .line 232
    iput p3, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    .line 234
    iget v0, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    if-eqz v0, :cond_5a

    iget v0, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_25

    goto :goto_5a

    .line 236
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contentToRecord was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but must be one of: RECORD_CONTENT_DISPLAY("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "), RECORD_CONTENT_TASK("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_5a
    :goto_5a
    iput p4, p0, Landroid/view/ContentRecordingSession;->mDisplayToRecord:I

    .line 243
    iput-object p5, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    .line 244
    iput-boolean p6, p0, Landroid/view/ContentRecordingSession;->mWaitingForConsent:Z

    .line 245
    iput p7, p0, Landroid/view/ContentRecordingSession;->mTargetUid:I

    .line 248
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 15
    .param p1, "in"    # Landroid/os/Parcel;

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ContentRecordingSession;->mTaskId:I

    .line 74
    iput v0, p0, Landroid/view/ContentRecordingSession;->mVirtualDisplayId:I

    .line 79
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    .line 88
    iput v0, p0, Landroid/view/ContentRecordingSession;->mDisplayToRecord:I

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    .line 105
    iput-boolean v1, p0, Landroid/view/ContentRecordingSession;->mWaitingForConsent:Z

    .line 108
    const/4 v2, -0x2

    iput v2, p0, Landroid/view/ContentRecordingSession;->mTargetUid:I

    .line 485
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 486
    .local v2, "flg":B
    and-int/lit8 v3, v2, 0x20

    const/4 v4, 0x1

    if-eqz v3, :cond_20

    move v3, v4

    goto :goto_21

    :cond_20
    move v3, v1

    .line 487
    .local v3, "waitingForConsent":Z
    :goto_21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 488
    .local v5, "taskId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 489
    .local v6, "virtualDisplayId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 490
    .local v7, "contentToRecord":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 491
    .local v8, "displayToRecord":I
    and-int/lit8 v9, v2, 0x10

    if-nez v9, :cond_36

    goto :goto_3a

    :cond_36
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 492
    .local v0, "tokenToRecord":Landroid/os/IBinder;
    :goto_3a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 494
    .local v9, "targetUid":I
    iput v5, p0, Landroid/view/ContentRecordingSession;->mTaskId:I

    .line 495
    iput v6, p0, Landroid/view/ContentRecordingSession;->mVirtualDisplayId:I

    .line 496
    iput v7, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    .line 498
    iget v10, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    if-eqz v10, :cond_82

    iget v10, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    if-ne v10, v4, :cond_4d

    goto :goto_82

    .line 500
    :cond_4d
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "contentToRecord was "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " but must be one of: RECORD_CONTENT_DISPLAY("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, "), RECORD_CONTENT_TASK("

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 506
    :cond_82
    :goto_82
    iput v8, p0, Landroid/view/ContentRecordingSession;->mDisplayToRecord:I

    .line 507
    iput-object v0, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    .line 508
    iput-boolean v3, p0, Landroid/view/ContentRecordingSession;->mWaitingForConsent:Z

    .line 509
    iput v9, p0, Landroid/view/ContentRecordingSession;->mTargetUid:I

    .line 512
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 687
    return-void
.end method

.method public static blacklist createDisplaySession(I)Landroid/view/ContentRecordingSession;
    .registers 3
    .param p0, "displayToMirror"    # I

    .line 118
    new-instance v0, Landroid/view/ContentRecordingSession;

    invoke-direct {v0}, Landroid/view/ContentRecordingSession;-><init>()V

    .line 119
    invoke-virtual {v0, p0}, Landroid/view/ContentRecordingSession;->setDisplayToRecord(I)Landroid/view/ContentRecordingSession;

    move-result-object v0

    .line 120
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ContentRecordingSession;->setContentToRecord(I)Landroid/view/ContentRecordingSession;

    move-result-object v0

    .line 121
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/ContentRecordingSession;->setTargetUid(I)Landroid/view/ContentRecordingSession;

    move-result-object v0

    .line 118
    return-object v0
.end method

.method public static blacklist createTaskSession(Landroid/os/IBinder;)Landroid/view/ContentRecordingSession;
    .registers 2
    .param p0, "taskWindowContainerToken"    # Landroid/os/IBinder;

    .line 127
    const/4 v0, -0x1

    invoke-static {p0, v0}, Landroid/view/ContentRecordingSession;->createTaskSession(Landroid/os/IBinder;I)Landroid/view/ContentRecordingSession;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist createTaskSession(Landroid/os/IBinder;I)Landroid/view/ContentRecordingSession;
    .registers 4
    .param p0, "taskWindowContainerToken"    # Landroid/os/IBinder;
    .param p1, "taskId"    # I

    .line 133
    new-instance v0, Landroid/view/ContentRecordingSession;

    invoke-direct {v0}, Landroid/view/ContentRecordingSession;-><init>()V

    .line 134
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ContentRecordingSession;->setContentToRecord(I)Landroid/view/ContentRecordingSession;

    move-result-object v0

    .line 135
    invoke-virtual {v0, p0}, Landroid/view/ContentRecordingSession;->setTokenToRecord(Landroid/os/IBinder;)Landroid/view/ContentRecordingSession;

    move-result-object v0

    .line 136
    invoke-virtual {v0, p1}, Landroid/view/ContentRecordingSession;->setTaskId(I)Landroid/view/ContentRecordingSession;

    move-result-object v0

    .line 133
    return-object v0
.end method

.method public static blacklist isProjectionOnSameDisplay(Landroid/view/ContentRecordingSession;Landroid/view/ContentRecordingSession;)Z
    .registers 4
    .param p0, "session"    # Landroid/view/ContentRecordingSession;
    .param p1, "incomingSession"    # Landroid/view/ContentRecordingSession;

    .line 163
    if-eqz p0, :cond_10

    if-eqz p1, :cond_10

    .line 164
    invoke-virtual {p0}, Landroid/view/ContentRecordingSession;->getVirtualDisplayId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/ContentRecordingSession;->getVirtualDisplayId()I

    move-result v1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 163
    :goto_11
    return v0
.end method

.method public static blacklist isValid(Landroid/view/ContentRecordingSession;)Z
    .registers 7
    .param p0, "session"    # Landroid/view/ContentRecordingSession;

    .line 146
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 147
    return v0

    .line 149
    :cond_4
    invoke-virtual {p0}, Landroid/view/ContentRecordingSession;->getContentToRecord()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    .line 150
    invoke-virtual {p0}, Landroid/view/ContentRecordingSession;->getTokenToRecord()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_13

    move v1, v2

    goto :goto_14

    :cond_13
    move v1, v0

    .line 151
    .local v1, "isValidTaskSession":Z
    :goto_14
    invoke-virtual {p0}, Landroid/view/ContentRecordingSession;->getContentToRecord()I

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_23

    .line 152
    invoke-virtual {p0}, Landroid/view/ContentRecordingSession;->getDisplayToRecord()I

    move-result v3

    if-le v3, v4, :cond_23

    move v3, v2

    goto :goto_24

    :cond_23
    move v3, v0

    .line 153
    .local v3, "isValidDisplaySession":Z
    :goto_24
    invoke-virtual {p0}, Landroid/view/ContentRecordingSession;->getVirtualDisplayId()I

    move-result v5

    if-le v5, v4, :cond_2f

    if-nez v1, :cond_2e

    if-eqz v3, :cond_2f

    :cond_2e
    move v0, v2

    :cond_2f
    return v0
.end method

.method public static blacklist recordContentToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # I

    .line 193
    packed-switch p0, :pswitch_data_e

    .line 198
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 197
    :pswitch_8
    const-string v0, "RECORD_CONTENT_TASK"

    return-object v0

    .line 195
    :pswitch_b
    const-string v0, "RECORD_CONTENT_DISPLAY"

    return-object v0

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public static blacklist targetUidToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # I

    .line 212
    packed-switch p0, :pswitch_data_e

    .line 217
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 214
    :pswitch_8
    const-string v0, "TARGET_UID_FULL_SCREEN"

    return-object v0

    .line 216
    :pswitch_b
    const-string v0, "TARGET_UID_UNKNOWN"

    return-object v0

    :pswitch_data_e
    .packed-switch -0x2
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 476
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 424
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 425
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_46

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_46

    .line 427
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/view/ContentRecordingSession;

    .line 429
    .local v2, "that":Landroid/view/ContentRecordingSession;
    iget v3, p0, Landroid/view/ContentRecordingSession;->mTaskId:I

    iget v4, v2, Landroid/view/ContentRecordingSession;->mTaskId:I

    if-ne v3, v4, :cond_44

    iget v3, p0, Landroid/view/ContentRecordingSession;->mVirtualDisplayId:I

    iget v4, v2, Landroid/view/ContentRecordingSession;->mVirtualDisplayId:I

    if-ne v3, v4, :cond_44

    iget v3, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    iget v4, v2, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    if-ne v3, v4, :cond_44

    iget v3, p0, Landroid/view/ContentRecordingSession;->mDisplayToRecord:I

    iget v4, v2, Landroid/view/ContentRecordingSession;->mDisplayToRecord:I

    if-ne v3, v4, :cond_44

    iget-object v3, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    iget-object v4, v2, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    .line 434
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    iget-boolean v3, p0, Landroid/view/ContentRecordingSession;->mWaitingForConsent:Z

    iget-boolean v4, v2, Landroid/view/ContentRecordingSession;->mWaitingForConsent:Z

    if-ne v3, v4, :cond_44

    iget v3, p0, Landroid/view/ContentRecordingSession;->mTargetUid:I

    iget v4, v2, Landroid/view/ContentRecordingSession;->mTargetUid:I

    if-ne v3, v4, :cond_44

    goto :goto_45

    :cond_44
    move v0, v1

    .line 429
    :goto_45
    return v0

    .line 425
    .end local v2    # "that":Landroid/view/ContentRecordingSession;
    :cond_46
    :goto_46
    return v1
.end method

.method public blacklist getContentToRecord()I
    .registers 2

    .line 273
    iget v0, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    return v0
.end method

.method public blacklist getDisplayToRecord()I
    .registers 2

    .line 284
    iget v0, p0, Landroid/view/ContentRecordingSession;->mDisplayToRecord:I

    return v0
.end method

.method public blacklist getTargetUid()I
    .registers 2

    .line 314
    iget v0, p0, Landroid/view/ContentRecordingSession;->mTargetUid:I

    return v0
.end method

.method public blacklist getTaskId()I
    .registers 2

    .line 256
    iget v0, p0, Landroid/view/ContentRecordingSession;->mTaskId:I

    return v0
.end method

.method public blacklist getTokenToRecord()Landroid/os/IBinder;
    .registers 2

    .line 295
    iget-object v0, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getVirtualDisplayId()I
    .registers 2

    .line 265
    iget v0, p0, Landroid/view/ContentRecordingSession;->mVirtualDisplayId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 445
    const/4 v0, 0x1

    .line 446
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/view/ContentRecordingSession;->mTaskId:I

    add-int/2addr v1, v2

    .line 447
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/view/ContentRecordingSession;->mVirtualDisplayId:I

    add-int/2addr v0, v2

    .line 448
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    add-int/2addr v1, v2

    .line 449
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/view/ContentRecordingSession;->mDisplayToRecord:I

    add-int/2addr v0, v2

    .line 450
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 451
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/view/ContentRecordingSession;->mWaitingForConsent:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    .line 452
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/view/ContentRecordingSession;->mTargetUid:I

    add-int/2addr v1, v2

    .line 453
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    return v1
.end method

.method public blacklist isWaitingForConsent()Z
    .registers 2

    .line 306
    iget-boolean v0, p0, Landroid/view/ContentRecordingSession;->mWaitingForConsent:Z

    return v0
.end method

.method public blacklist setContentToRecord(I)Landroid/view/ContentRecordingSession;
    .registers 6
    .param p1, "value"    # I

    .line 342
    iput p1, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    .line 344
    iget v0, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    if-eqz v0, :cond_42

    iget v0, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    goto :goto_42

    .line 346
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contentToRecord was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but must be one of: RECORD_CONTENT_DISPLAY("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), RECORD_CONTENT_TASK("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_42
    :goto_42
    return-object p0
.end method

.method public blacklist setDisplayToRecord(I)Landroid/view/ContentRecordingSession;
    .registers 2
    .param p1, "value"    # I

    .line 363
    iput p1, p0, Landroid/view/ContentRecordingSession;->mDisplayToRecord:I

    .line 364
    return-object p0
.end method

.method public blacklist setTargetUid(I)Landroid/view/ContentRecordingSession;
    .registers 2
    .param p1, "value"    # I

    .line 396
    iput p1, p0, Landroid/view/ContentRecordingSession;->mTargetUid:I

    .line 397
    return-object p0
.end method

.method public blacklist setTaskId(I)Landroid/view/ContentRecordingSession;
    .registers 2
    .param p1, "value"    # I

    .line 323
    iput p1, p0, Landroid/view/ContentRecordingSession;->mTaskId:I

    .line 324
    return-object p0
.end method

.method public blacklist setTokenToRecord(Landroid/os/IBinder;)Landroid/view/ContentRecordingSession;
    .registers 2
    .param p1, "value"    # Landroid/os/IBinder;

    .line 375
    iput-object p1, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    .line 376
    return-object p0
.end method

.method public blacklist setVirtualDisplayId(I)Landroid/view/ContentRecordingSession;
    .registers 2
    .param p1, "value"    # I

    .line 333
    iput p1, p0, Landroid/view/ContentRecordingSession;->mVirtualDisplayId:I

    .line 334
    return-object p0
.end method

.method public blacklist setWaitingForConsent(Z)Landroid/view/ContentRecordingSession;
    .registers 2
    .param p1, "value"    # Z

    .line 387
    iput-boolean p1, p0, Landroid/view/ContentRecordingSession;->mWaitingForConsent:Z

    .line 388
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentRecordingSession { taskId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/ContentRecordingSession;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", virtualDisplayId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/ContentRecordingSession;->mVirtualDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contentToRecord = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    .line 409
    invoke-static {v1}, Landroid/view/ContentRecordingSession;->recordContentToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayToRecord = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/ContentRecordingSession;->mDisplayToRecord:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tokenToRecord = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", waitingForConsent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/ContentRecordingSession;->mWaitingForConsent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", targetUid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/ContentRecordingSession;->mTargetUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 406
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 462
    const/4 v0, 0x0

    .line 463
    .local v0, "flg":B
    iget-boolean v1, p0, Landroid/view/ContentRecordingSession;->mWaitingForConsent:Z

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x20

    int-to-byte v0, v1

    .line 464
    :cond_8
    iget-object v1, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    if-eqz v1, :cond_f

    or-int/lit8 v1, v0, 0x10

    int-to-byte v0, v1

    .line 465
    :cond_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 466
    iget v1, p0, Landroid/view/ContentRecordingSession;->mTaskId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 467
    iget v1, p0, Landroid/view/ContentRecordingSession;->mVirtualDisplayId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 468
    iget v1, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 469
    iget v1, p0, Landroid/view/ContentRecordingSession;->mDisplayToRecord:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 470
    iget-object v1, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 471
    :cond_2f
    iget v1, p0, Landroid/view/ContentRecordingSession;->mTargetUid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 472
    return-void
.end method

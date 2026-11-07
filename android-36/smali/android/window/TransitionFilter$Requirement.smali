.class public final Landroid/window/TransitionFilter$Requirement;
.super Ljava/lang/Object;
.source "TransitionFilter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TransitionFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Requirement"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TransitionFilter$Requirement;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist mActivityType:I

.field public blacklist mCustomAnimation:Ljava/lang/Boolean;

.field public blacklist mFlags:I

.field public blacklist mLaunchCookie:Landroid/os/IBinder;

.field public blacklist mModes:[I

.field public blacklist mMustBeIndependent:Z

.field public blacklist mMustBeTask:Z

.field public blacklist mNot:Z

.field public blacklist mOrder:I

.field public blacklist mTaskFragmentToken:Landroid/os/IBinder;

.field public blacklist mTopActivity:Landroid/content/ComponentName;

.field public blacklist mWindowingMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 335
    new-instance v0, Landroid/window/TransitionFilter$Requirement$1;

    invoke-direct {v0}, Landroid/window/TransitionFilter$Requirement$1;-><init>()V

    sput-object v0, Landroid/window/TransitionFilter$Requirement;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    const/4 v0, 0x0

    iput v0, p0, Landroid/window/TransitionFilter$Requirement;->mActivityType:I

    .line 170
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/window/TransitionFilter$Requirement;->mMustBeIndependent:Z

    .line 173
    iput-boolean v0, p0, Landroid/window/TransitionFilter$Requirement;->mNot:Z

    .line 175
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/window/TransitionFilter$Requirement;->mModes:[I

    .line 178
    iput v0, p0, Landroid/window/TransitionFilter$Requirement;->mFlags:I

    .line 181
    iput-boolean v0, p0, Landroid/window/TransitionFilter$Requirement;->mMustBeTask:Z

    .line 183
    iput v0, p0, Landroid/window/TransitionFilter$Requirement;->mOrder:I

    .line 188
    iput-object v1, p0, Landroid/window/TransitionFilter$Requirement;->mCustomAnimation:Ljava/lang/Boolean;

    .line 189
    iput-object v1, p0, Landroid/window/TransitionFilter$Requirement;->mTaskFragmentToken:Landroid/os/IBinder;

    .line 191
    iput v0, p0, Landroid/window/TransitionFilter$Requirement;->mWindowingMode:I

    .line 194
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    const/4 v0, 0x0

    iput v0, p0, Landroid/window/TransitionFilter$Requirement;->mActivityType:I

    .line 170
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/window/TransitionFilter$Requirement;->mMustBeIndependent:Z

    .line 173
    iput-boolean v0, p0, Landroid/window/TransitionFilter$Requirement;->mNot:Z

    .line 175
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/window/TransitionFilter$Requirement;->mModes:[I

    .line 178
    iput v0, p0, Landroid/window/TransitionFilter$Requirement;->mFlags:I

    .line 181
    iput-boolean v0, p0, Landroid/window/TransitionFilter$Requirement;->mMustBeTask:Z

    .line 183
    iput v0, p0, Landroid/window/TransitionFilter$Requirement;->mOrder:I

    .line 188
    iput-object v2, p0, Landroid/window/TransitionFilter$Requirement;->mCustomAnimation:Ljava/lang/Boolean;

    .line 189
    iput-object v2, p0, Landroid/window/TransitionFilter$Requirement;->mTaskFragmentToken:Landroid/os/IBinder;

    .line 191
    iput v0, p0, Landroid/window/TransitionFilter$Requirement;->mWindowingMode:I

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/window/TransitionFilter$Requirement;->mActivityType:I

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    iput-boolean v3, p0, Landroid/window/TransitionFilter$Requirement;->mMustBeIndependent:Z

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    iput-boolean v3, p0, Landroid/window/TransitionFilter$Requirement;->mNot:Z

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    iput-object v3, p0, Landroid/window/TransitionFilter$Requirement;->mModes:[I

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/window/TransitionFilter$Requirement;->mFlags:I

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    iput-boolean v3, p0, Landroid/window/TransitionFilter$Requirement;->mMustBeTask:Z

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/window/TransitionFilter$Requirement;->mOrder:I

    .line 204
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    iput-object v3, p0, Landroid/window/TransitionFilter$Requirement;->mTopActivity:Landroid/content/ComponentName;

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, p0, Landroid/window/TransitionFilter$Requirement;->mLaunchCookie:Landroid/os/IBinder;

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 208
    .local v3, "customAnimRaw":I
    if-nez v3, :cond_5b

    goto :goto_63

    :cond_5b
    const/4 v2, 0x2

    if-ne v3, v2, :cond_5f

    move v0, v1

    :cond_5f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_63
    iput-object v2, p0, Landroid/window/TransitionFilter$Requirement;->mCustomAnimation:Ljava/lang/Boolean;

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/window/TransitionFilter$Requirement;->mTaskFragmentToken:Landroid/os/IBinder;

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionFilter$Requirement;->mWindowingMode:I

    .line 211
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/TransitionFilter-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/TransitionFilter$Requirement;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist matchesCookie(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .registers 7
    .param p1, "info"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 296
    iget-object v0, p0, Landroid/window/TransitionFilter$Requirement;->mLaunchCookie:Landroid/os/IBinder;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 297
    :cond_6
    const/4 v0, 0x0

    if-nez p1, :cond_a

    return v0

    .line 298
    :cond_a
    iget-object v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->launchCookies:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 299
    .local v3, "cookie":Landroid/os/IBinder;
    iget-object v4, p0, Landroid/window/TransitionFilter$Requirement;->mLaunchCookie:Landroid/os/IBinder;

    invoke-interface {v4, v3}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 300
    return v1

    .line 302
    .end local v3    # "cookie":Landroid/os/IBinder;
    :cond_25
    goto :goto_10

    .line 303
    :cond_26
    return v0
.end method

.method private blacklist matchesTopActivity(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/content/ComponentName;)Z
    .registers 5
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "activityComponent"    # Landroid/content/ComponentName;

    .line 286
    iget-object v0, p0, Landroid/window/TransitionFilter$Requirement;->mTopActivity:Landroid/content/ComponentName;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    .line 287
    :cond_6
    if-eqz p2, :cond_f

    .line 288
    iget-object v0, p0, Landroid/window/TransitionFilter$Requirement;->mTopActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 289
    :cond_f
    if-eqz p1, :cond_1a

    .line 290
    iget-object v0, p0, Landroid/window/TransitionFilter$Requirement;->mTopActivity:Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 292
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 351
    const/4 v0, 0x0

    return v0
.end method

.method blacklist matches(Landroid/window/TransitionInfo;)Z
    .registers 10
    .param p1, "info"    # Landroid/window/TransitionInfo;

    .line 215
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_a
    const/4 v2, 0x0

    if-ltz v0, :cond_f9

    .line 216
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Change;

    .line 218
    .local v3, "change":Landroid/window/TransitionInfo$Change;
    iget-object v4, p0, Landroid/window/TransitionFilter$Requirement;->mTaskFragmentToken:Landroid/os/IBinder;

    if-eqz v4, :cond_29

    iget-object v4, p0, Landroid/window/TransitionFilter$Requirement;->mTaskFragmentToken:Landroid/os/IBinder;

    .line 219
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    .line 220
    goto/16 :goto_f4

    .line 223
    :cond_29
    iget-boolean v4, p0, Landroid/window/TransitionFilter$Requirement;->mMustBeIndependent:Z

    if-eqz v4, :cond_35

    invoke-static {v3, p1}, Landroid/window/TransitionInfo;->isIndependent(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)Z

    move-result v4

    if-nez v4, :cond_35

    .line 225
    goto/16 :goto_f4

    .line 227
    :cond_35
    iget v4, p0, Landroid/window/TransitionFilter$Requirement;->mOrder:I

    if-ne v4, v1, :cond_3d

    if-lez v0, :cond_3d

    .line 228
    goto/16 :goto_f4

    .line 230
    :cond_3d
    iget v4, p0, Landroid/window/TransitionFilter$Requirement;->mActivityType:I

    if-eqz v4, :cond_55

    .line 231
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    if-eqz v4, :cond_f4

    .line 232
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v4

    iget v5, p0, Landroid/window/TransitionFilter$Requirement;->mActivityType:I

    if-eq v4, v5, :cond_55

    .line 233
    goto/16 :goto_f4

    .line 236
    :cond_55
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getActivityComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Landroid/window/TransitionFilter$Requirement;->matchesTopActivity(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_65

    .line 237
    goto/16 :goto_f4

    .line 239
    :cond_65
    iget-object v4, p0, Landroid/window/TransitionFilter$Requirement;->mModes:[I

    if-eqz v4, :cond_83

    .line 240
    const/4 v4, 0x0

    .line 241
    .local v4, "pass":Z
    const/4 v5, 0x0

    .local v5, "m":I
    :goto_6b
    iget-object v6, p0, Landroid/window/TransitionFilter$Requirement;->mModes:[I

    array-length v6, v6

    if-ge v5, v6, :cond_7f

    .line 242
    iget-object v6, p0, Landroid/window/TransitionFilter$Requirement;->mModes:[I

    aget v6, v6, v5

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v7

    if-ne v6, v7, :cond_7c

    .line 243
    const/4 v4, 0x1

    .line 244
    goto :goto_7f

    .line 241
    :cond_7c
    add-int/lit8 v5, v5, 0x1

    goto :goto_6b

    .line 247
    .end local v5    # "m":I
    :cond_7f
    :goto_7f
    if-nez v4, :cond_83

    goto/16 :goto_f4

    .line 249
    .end local v4    # "pass":Z
    :cond_83
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v4

    iget v5, p0, Landroid/window/TransitionFilter$Requirement;->mFlags:I

    and-int/2addr v4, v5

    iget v5, p0, Landroid/window/TransitionFilter$Requirement;->mFlags:I

    if-eq v4, v5, :cond_90

    .line 250
    goto/16 :goto_f4

    .line 252
    :cond_90
    iget-boolean v4, p0, Landroid/window/TransitionFilter$Requirement;->mMustBeTask:Z

    if-eqz v4, :cond_9b

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    if-nez v4, :cond_9b

    .line 253
    goto :goto_f4

    .line 255
    :cond_9b
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/window/TransitionFilter$Requirement;->matchesCookie(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v4

    if-nez v4, :cond_a6

    .line 256
    goto :goto_f4

    .line 258
    :cond_a6
    iget-object v4, p0, Landroid/window/TransitionFilter$Requirement;->mCustomAnimation:Ljava/lang/Boolean;

    if-eqz v4, :cond_dd

    .line 260
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    if-nez v4, :cond_b6

    .line 261
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getActivityComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_dd

    .line 262
    :cond_b6
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v4

    .line 263
    .local v4, "opts":Landroid/window/TransitionInfo$AnimationOptions;
    if-eqz v4, :cond_d3

    .line 264
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    if-eqz v5, :cond_c8

    .line 265
    invoke-virtual {v4}, Landroid/window/TransitionInfo$AnimationOptions;->getOverrideTaskTransition()Z

    move-result v5

    if-eqz v5, :cond_c9

    :cond_c8
    move v2, v1

    .line 266
    .local v2, "canActuallyOverride":Z
    :cond_c9
    iget-object v5, p0, Landroid/window/TransitionFilter$Requirement;->mCustomAnimation:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eq v5, v2, :cond_d2

    .line 267
    goto :goto_f4

    .line 266
    .end local v2    # "canActuallyOverride":Z
    :cond_d2
    goto :goto_dc

    .line 269
    :cond_d3
    iget-object v2, p0, Landroid/window/TransitionFilter$Requirement;->mCustomAnimation:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_dc

    .line 270
    goto :goto_f4

    .line 269
    :cond_dc
    :goto_dc
    nop

    .line 273
    .end local v4    # "opts":Landroid/window/TransitionInfo$AnimationOptions;
    :cond_dd
    iget v2, p0, Landroid/window/TransitionFilter$Requirement;->mWindowingMode:I

    if-eqz v2, :cond_f8

    .line 274
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    if-eqz v2, :cond_f4

    .line 275
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v2

    iget v4, p0, Landroid/window/TransitionFilter$Requirement;->mWindowingMode:I

    if-eq v2, v4, :cond_f8

    .line 276
    nop

    .line 215
    .end local v3    # "change":Landroid/window/TransitionInfo$Change;
    :cond_f4
    :goto_f4
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_a

    .line 279
    .restart local v3    # "change":Landroid/window/TransitionInfo$Change;
    :cond_f8
    return v1

    .line 281
    .end local v0    # "i":I
    .end local v3    # "change":Landroid/window/TransitionInfo$Change;
    :cond_f9
    return v2
.end method

.method blacklist matches(Landroid/window/TransitionRequestInfo;)Z
    .registers 5
    .param p1, "request"    # Landroid/window/TransitionRequestInfo;

    .line 309
    iget v0, p0, Landroid/window/TransitionFilter$Requirement;->mActivityType:I

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 310
    :cond_6
    invoke-virtual {p1}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 311
    invoke-virtual {p1}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v0

    iget v2, p0, Landroid/window/TransitionFilter$Requirement;->mActivityType:I

    if-ne v0, v2, :cond_2e

    .line 312
    invoke-virtual {p1}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Landroid/window/TransitionFilter$Requirement;->matchesTopActivity(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 313
    invoke-virtual {p1}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/TransitionFilter$Requirement;->matchesCookie(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v0

    if-eqz v0, :cond_2e

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x0

    .line 310
    :goto_2f
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 357
    .local v0, "out":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 358
    iget-boolean v1, p0, Landroid/window/TransitionFilter$Requirement;->mNot:Z

    if-eqz v1, :cond_13

    const-string v1, "NOT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "atype="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/window/TransitionFilter$Requirement;->mActivityType:I

    invoke-static {v2}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " independent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/window/TransitionFilter$Requirement;->mMustBeIndependent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    const-string v1, " modes=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    iget-object v1, p0, Landroid/window/TransitionFilter$Requirement;->mModes:[I

    if-eqz v1, :cond_7c

    .line 363
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_51
    iget-object v2, p0, Landroid/window/TransitionFilter$Requirement;->mModes:[I

    array-length v2, v2

    if-ge v1, v2, :cond_7c

    .line 364
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v1, :cond_60

    const-string v3, ""

    goto :goto_62

    :cond_60
    const-string v3, ","

    :goto_62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/window/TransitionFilter$Requirement;->mModes:[I

    aget v3, v3, v1

    invoke-static {v3}, Landroid/window/TransitionInfo;->modeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    .line 367
    .end local v1    # "i":I
    :cond_7c
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/window/TransitionFilter$Requirement;->mFlags:I

    invoke-static {v2}, Landroid/window/TransitionInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mustBeTask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/window/TransitionFilter$Requirement;->mMustBeTask:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " order="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/window/TransitionFilter$Requirement;->mOrder:I

    invoke-static {v2}, Landroid/window/TransitionFilter;->-$$Nest$smcontainerOrderToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    const-string v1, " topActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/TransitionFilter$Requirement;->mTopActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 372
    const-string v1, " launchCookie="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/TransitionFilter$Requirement;->mLaunchCookie:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 373
    iget-object v1, p0, Landroid/window/TransitionFilter$Requirement;->mCustomAnimation:Ljava/lang/Boolean;

    if-eqz v1, :cond_fa

    .line 374
    const-string v1, " customAnim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/TransitionFilter$Requirement;->mCustomAnimation:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 376
    :cond_fa
    iget-object v1, p0, Landroid/window/TransitionFilter$Requirement;->mTaskFragmentToken:Landroid/os/IBinder;

    if-eqz v1, :cond_109

    .line 377
    const-string v1, " taskFragmentToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/TransitionFilter$Requirement;->mTaskFragmentToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 379
    :cond_109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " windowingMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/window/TransitionFilter$Requirement;->mWindowingMode:I

    .line 380
    invoke-static {v2}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 379
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 319
    iget v0, p0, Landroid/window/TransitionFilter$Requirement;->mActivityType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    iget-boolean v0, p0, Landroid/window/TransitionFilter$Requirement;->mMustBeIndependent:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 321
    iget-boolean v0, p0, Landroid/window/TransitionFilter$Requirement;->mNot:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 322
    iget-object v0, p0, Landroid/window/TransitionFilter$Requirement;->mModes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 323
    iget v0, p0, Landroid/window/TransitionFilter$Requirement;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    iget-boolean v0, p0, Landroid/window/TransitionFilter$Requirement;->mMustBeTask:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 325
    iget v0, p0, Landroid/window/TransitionFilter$Requirement;->mOrder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    iget-object v0, p0, Landroid/window/TransitionFilter$Requirement;->mTopActivity:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 327
    iget-object v0, p0, Landroid/window/TransitionFilter$Requirement;->mLaunchCookie:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 328
    iget-object v0, p0, Landroid/window/TransitionFilter$Requirement;->mCustomAnimation:Ljava/lang/Boolean;

    if-nez v0, :cond_33

    const/4 v0, 0x0

    goto :goto_3e

    :cond_33
    iget-object v0, p0, Landroid/window/TransitionFilter$Requirement;->mCustomAnimation:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3d

    const/4 v0, 0x2

    goto :goto_3e

    :cond_3d
    const/4 v0, 0x1

    .line 329
    .local v0, "customAnimRaw":I
    :goto_3e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    iget-object v1, p0, Landroid/window/TransitionFilter$Requirement;->mTaskFragmentToken:Landroid/os/IBinder;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 331
    iget v1, p0, Landroid/window/TransitionFilter$Requirement;->mWindowingMode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    return-void
.end method

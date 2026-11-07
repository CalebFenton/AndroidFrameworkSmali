.class public Landroid/app/servertransaction/LaunchActivityItem;
.super Landroid/app/servertransaction/ClientTransactionItem;
.source "LaunchActivityItem.java"


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/LaunchActivityItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mActivityClientController:Landroid/app/IActivityClientController;

.field private final blacklist mActivityToken:Landroid/os/IBinder;

.field private final blacklist mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

.field private final blacklist mAssistToken:Landroid/os/IBinder;

.field private final greylist-max-o mCurConfig:Landroid/content/res/Configuration;

.field private final blacklist mDeviceId:I

.field private final greylist-max-o mIdent:I

.field private greylist mInfo:Landroid/content/pm/ActivityInfo;

.field private final blacklist mInitialCallerInfoAccessToken:Landroid/os/IBinder;

.field private greylist mIntent:Landroid/content/Intent;

.field private final greylist-max-o mIsForward:Z

.field private final blacklist mLaunchedFromBubble:Z

.field private final greylist-max-o mOverrideConfig:Landroid/content/res/Configuration;

.field private final greylist-max-o mPendingNewIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mPendingResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mPersistentState:Landroid/os/PersistableBundle;

.field private final greylist-max-o mProcState:I

.field private final greylist-max-o mProfilerInfo:Landroid/app/ProfilerInfo;

.field private final greylist-max-o mReferrer:Ljava/lang/String;

.field private final blacklist mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

.field private final blacklist mShareableActivityToken:Landroid/os/IBinder;

.field private final greylist-max-o mState:Landroid/os/Bundle;

.field private final blacklist mTaskFragmentToken:Landroid/os/IBinder;

.field private final greylist-max-o mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 302
    new-instance v0, Landroid/app/servertransaction/LaunchActivityItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/LaunchActivityItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/LaunchActivityItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/IBinder;ILandroid/content/res/Configuration;Landroid/content/res/Configuration;ILjava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;Landroid/app/ActivityOptions$SceneTransitionInfo;ZLandroid/app/ProfilerInfo;Landroid/os/IBinder;Landroid/app/IActivityClientController;Landroid/os/IBinder;ZLandroid/os/IBinder;Landroid/os/IBinder;Landroid/window/ActivityWindowInfo;)V
    .registers 39
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "ident"    # I
    .param p3, "curConfig"    # Landroid/content/res/Configuration;
    .param p4, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p5, "deviceId"    # I
    .param p6, "referrer"    # Ljava/lang/String;
    .param p7, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p8, "procState"    # I
    .param p9, "state"    # Landroid/os/Bundle;
    .param p10, "persistentState"    # Landroid/os/PersistableBundle;
    .param p13, "sceneTransitionInfo"    # Landroid/app/ActivityOptions$SceneTransitionInfo;
    .param p14, "isForward"    # Z
    .param p15, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p16, "assistToken"    # Landroid/os/IBinder;
    .param p17, "activityClientController"    # Landroid/app/IActivityClientController;
    .param p18, "shareableActivityToken"    # Landroid/os/IBinder;
    .param p19, "launchedFromBubble"    # Z
    .param p20, "taskFragmentToken"    # Landroid/os/IBinder;
    .param p21, "initialCallerInfoAccessToken"    # Landroid/os/IBinder;
    .param p22, "activityWindowInfo"    # Landroid/window/ActivityWindowInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "I",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/Configuration;",
            "I",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/IVoiceInteractor;",
            "I",
            "Landroid/os/Bundle;",
            "Landroid/os/PersistableBundle;",
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;",
            "Landroid/app/ActivityOptions$SceneTransitionInfo;",
            "Z",
            "Landroid/app/ProfilerInfo;",
            "Landroid/os/IBinder;",
            "Landroid/app/IActivityClientController;",
            "Landroid/os/IBinder;",
            "Z",
            "Landroid/os/IBinder;",
            "Landroid/os/IBinder;",
            "Landroid/window/ActivityWindowInfo;",
            ")V"
        }
    .end annotation

    .line 176
    .local p11, "pendingResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p12, "pendingNewIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    .line 177
    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/app/servertransaction/LaunchActivityItem;->mActivityToken:Landroid/os/IBinder;

    .line 178
    move/from16 v2, p2

    iput v2, v0, Landroid/app/servertransaction/LaunchActivityItem;->mIdent:I

    .line 179
    move-object/from16 v3, p3

    iput-object v3, v0, Landroid/app/servertransaction/LaunchActivityItem;->mCurConfig:Landroid/content/res/Configuration;

    .line 180
    move-object/from16 v4, p4

    iput-object v4, v0, Landroid/app/servertransaction/LaunchActivityItem;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 181
    move/from16 v5, p5

    iput v5, v0, Landroid/app/servertransaction/LaunchActivityItem;->mDeviceId:I

    .line 182
    move-object/from16 v6, p6

    iput-object v6, v0, Landroid/app/servertransaction/LaunchActivityItem;->mReferrer:Ljava/lang/String;

    .line 183
    move-object/from16 v7, p7

    iput-object v7, v0, Landroid/app/servertransaction/LaunchActivityItem;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 184
    move/from16 v8, p8

    iput v8, v0, Landroid/app/servertransaction/LaunchActivityItem;->mProcState:I

    .line 185
    move-object/from16 v9, p9

    iput-object v9, v0, Landroid/app/servertransaction/LaunchActivityItem;->mState:Landroid/os/Bundle;

    .line 186
    move-object/from16 v10, p10

    iput-object v10, v0, Landroid/app/servertransaction/LaunchActivityItem;->mPersistentState:Landroid/os/PersistableBundle;

    .line 187
    move-object/from16 v11, p11

    iput-object v11, v0, Landroid/app/servertransaction/LaunchActivityItem;->mPendingResults:Ljava/util/List;

    .line 188
    move-object/from16 v12, p12

    iput-object v12, v0, Landroid/app/servertransaction/LaunchActivityItem;->mPendingNewIntents:Ljava/util/List;

    .line 189
    move-object/from16 v13, p13

    iput-object v13, v0, Landroid/app/servertransaction/LaunchActivityItem;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    .line 190
    move/from16 v14, p14

    iput-boolean v14, v0, Landroid/app/servertransaction/LaunchActivityItem;->mIsForward:Z

    .line 191
    move-object/from16 v15, p15

    iput-object v15, v0, Landroid/app/servertransaction/LaunchActivityItem;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 192
    move-object/from16 v1, p16

    iput-object v1, v0, Landroid/app/servertransaction/LaunchActivityItem;->mAssistToken:Landroid/os/IBinder;

    .line 193
    move-object/from16 v1, p17

    iput-object v1, v0, Landroid/app/servertransaction/LaunchActivityItem;->mActivityClientController:Landroid/app/IActivityClientController;

    .line 194
    move-object/from16 v1, p18

    iput-object v1, v0, Landroid/app/servertransaction/LaunchActivityItem;->mShareableActivityToken:Landroid/os/IBinder;

    .line 195
    move/from16 v1, p19

    iput-boolean v1, v0, Landroid/app/servertransaction/LaunchActivityItem;->mLaunchedFromBubble:Z

    .line 196
    move-object/from16 v1, p20

    iput-object v1, v0, Landroid/app/servertransaction/LaunchActivityItem;->mTaskFragmentToken:Landroid/os/IBinder;

    .line 197
    move-object/from16 v1, p21

    iput-object v1, v0, Landroid/app/servertransaction/LaunchActivityItem;->mInitialCallerInfoAccessToken:Landroid/os/IBinder;

    .line 198
    move-object/from16 v1, p22

    iput-object v1, v0, Landroid/app/servertransaction/LaunchActivityItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    .line 199
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;ILjava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;Landroid/app/ActivityOptions$SceneTransitionInfo;ZLandroid/app/ProfilerInfo;Landroid/os/IBinder;Landroid/app/IActivityClientController;Landroid/os/IBinder;ZLandroid/os/IBinder;Landroid/os/IBinder;Landroid/window/ActivityWindowInfo;)V
    .registers 48
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "ident"    # I
    .param p4, "info"    # Landroid/content/pm/ActivityInfo;
    .param p5, "curConfig"    # Landroid/content/res/Configuration;
    .param p6, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p7, "deviceId"    # I
    .param p8, "referrer"    # Ljava/lang/String;
    .param p9, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p10, "procState"    # I
    .param p11, "state"    # Landroid/os/Bundle;
    .param p12, "persistentState"    # Landroid/os/PersistableBundle;
    .param p15, "sceneTransitionInfo"    # Landroid/app/ActivityOptions$SceneTransitionInfo;
    .param p16, "isForward"    # Z
    .param p17, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p18, "assistToken"    # Landroid/os/IBinder;
    .param p19, "activityClientController"    # Landroid/app/IActivityClientController;
    .param p20, "shareableActivityToken"    # Landroid/os/IBinder;
    .param p21, "launchedFromBubble"    # Z
    .param p22, "taskFragmentToken"    # Landroid/os/IBinder;
    .param p23, "initialCallerInfoAccessToken"    # Landroid/os/IBinder;
    .param p24, "activityWindowInfo"    # Landroid/window/ActivityWindowInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Landroid/content/Intent;",
            "I",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/Configuration;",
            "I",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/IVoiceInteractor;",
            "I",
            "Landroid/os/Bundle;",
            "Landroid/os/PersistableBundle;",
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;",
            "Landroid/app/ActivityOptions$SceneTransitionInfo;",
            "Z",
            "Landroid/app/ProfilerInfo;",
            "Landroid/os/IBinder;",
            "Landroid/app/IActivityClientController;",
            "Landroid/os/IBinder;",
            "Z",
            "Landroid/os/IBinder;",
            "Landroid/os/IBinder;",
            "Landroid/window/ActivityWindowInfo;",
            ")V"
        }
    .end annotation

    .line 147
    .local p13, "pendingResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p14, "pendingNewIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    move-object/from16 v0, p11

    move-object/from16 v1, p12

    move-object/from16 v2, p13

    move-object/from16 v3, p14

    move-object/from16 v4, p17

    new-instance v5, Landroid/content/res/Configuration;

    move-object/from16 v6, p5

    invoke-direct {v5, v6}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    new-instance v7, Landroid/content/res/Configuration;

    move-object/from16 v8, p6

    invoke-direct {v7, v8}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 149
    const/4 v9, 0x0

    if-eqz v0, :cond_21

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_22

    :cond_21
    move-object v10, v9

    .line 150
    :goto_22
    if-eqz v1, :cond_2a

    new-instance v11, Landroid/os/PersistableBundle;

    invoke-direct {v11, v1}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    goto :goto_2b

    :cond_2a
    move-object v11, v9

    .line 151
    :goto_2b
    if-eqz v2, :cond_33

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_34

    :cond_33
    move-object v12, v9

    .line 152
    :goto_34
    if-eqz v3, :cond_3c

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_3d

    :cond_3c
    move-object v13, v9

    .line 154
    :goto_3d
    if-eqz v4, :cond_44

    new-instance v9, Landroid/app/ProfilerInfo;

    invoke-direct {v9, v4}, Landroid/app/ProfilerInfo;-><init>(Landroid/app/ProfilerInfo;)V

    :cond_44
    move-object v15, v9

    new-instance v9, Landroid/window/ActivityWindowInfo;

    move-object/from16 v14, p24

    invoke-direct {v9, v14}, Landroid/window/ActivityWindowInfo;-><init>(Landroid/window/ActivityWindowInfo;)V

    .line 147
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v6, p8

    move/from16 v8, p10

    move/from16 v14, p16

    move-object/from16 v16, p18

    move-object/from16 v17, p19

    move-object/from16 v18, p20

    move/from16 v19, p21

    move-object/from16 v20, p22

    move-object/from16 v21, p23

    move-object v3, v5

    move-object v4, v7

    move-object/from16 v22, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move/from16 v5, p7

    move-object/from16 v7, p9

    move-object/from16 v13, p15

    invoke-direct/range {v0 .. v22}, Landroid/app/servertransaction/LaunchActivityItem;-><init>(Landroid/os/IBinder;ILandroid/content/res/Configuration;Landroid/content/res/Configuration;ILjava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;Landroid/app/ActivityOptions$SceneTransitionInfo;ZLandroid/app/ProfilerInfo;Landroid/os/IBinder;Landroid/app/IActivityClientController;Landroid/os/IBinder;ZLandroid/os/IBinder;Landroid/os/IBinder;Landroid/window/ActivityWindowInfo;)V

    .line 158
    new-instance v1, Landroid/content/Intent;

    move-object/from16 v2, p2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v1, v0, Landroid/app/servertransaction/LaunchActivityItem;->mIntent:Landroid/content/Intent;

    .line 159
    new-instance v1, Landroid/content/pm/ActivityInfo;

    move-object/from16 v3, p4

    invoke-direct {v1, v3}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    iput-object v1, v0, Landroid/app/servertransaction/LaunchActivityItem;->mInfo:Landroid/content/pm/ActivityInfo;

    .line 160
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 25
    .param p1, "in"    # Landroid/os/Parcel;

    .line 273
    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 274
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 275
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Configuration;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Configuration;

    sget-object v4, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 276
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/Configuration;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/Configuration;

    .line 277
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 278
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 279
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v7

    .line 280
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 281
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v9

    .line 282
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->readPersistableBundle(Ljava/lang/ClassLoader;)Landroid/os/PersistableBundle;

    move-result-object v10

    sget-object v11, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 283
    invoke-virtual {v0, v11}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v11

    sget-object v12, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 284
    invoke-virtual {v0, v12}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v12

    sget-object v13, Landroid/app/ActivityOptions$SceneTransitionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 285
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/ActivityOptions$SceneTransitionInfo;

    .line 286
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v14

    sget-object v15, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 287
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ProfilerInfo;

    .line 288
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    .line 290
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    .line 289
    invoke-static/range {v17 .. v17}, Landroid/app/IActivityClientController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityClientController;

    move-result-object v17

    .line 291
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v18

    .line 292
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    .line 293
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v20

    .line 294
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v21

    move-object/from16 v22, v1

    sget-object v1, Landroid/window/ActivityWindowInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 295
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/ActivityWindowInfo;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/ActivityWindowInfo;

    .line 273
    move-object/from16 v0, v22

    move-object/from16 v22, v1

    move-object v1, v0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v22}, Landroid/app/servertransaction/LaunchActivityItem;-><init>(Landroid/os/IBinder;ILandroid/content/res/Configuration;Landroid/content/res/Configuration;ILjava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;Landroid/app/ActivityOptions$SceneTransitionInfo;ZLandroid/app/ProfilerInfo;Landroid/os/IBinder;Landroid/app/IActivityClientController;Landroid/os/IBinder;ZLandroid/os/IBinder;Landroid/os/IBinder;Landroid/window/ActivityWindowInfo;)V

    .line 298
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, v0, Landroid/app/servertransaction/LaunchActivityItem;->mIntent:Landroid/content/Intent;

    .line 299
    sget-object v1, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    iput-object v1, v0, Landroid/app/servertransaction/LaunchActivityItem;->mInfo:Landroid/content/pm/ActivityInfo;

    .line 300
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/servertransaction/LaunchActivityItem-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/servertransaction/LaunchActivityItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private greylist-max-o activityInfoEqual(Landroid/content/pm/ActivityInfo;)Z
    .registers 6
    .param p1, "other"    # Landroid/content/pm/ActivityInfo;

    .line 371
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mInfo:Landroid/content/pm/ActivityInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_b

    .line 372
    if-nez p1, :cond_9

    goto :goto_a

    :cond_9
    move v1, v2

    :goto_a
    return v1

    .line 374
    :cond_b
    if-eqz p1, :cond_40

    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mInfo:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    iget v3, p1, Landroid/content/pm/ActivityInfo;->flags:I

    if-ne v0, v3, :cond_40

    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mInfo:Landroid/content/pm/ActivityInfo;

    .line 375
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getMaxAspectRatio()F

    move-result v0

    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getMaxAspectRatio()F

    move-result v3

    cmpl-float v0, v0, v3

    if-nez v0, :cond_40

    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    .line 376
    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mInfo:Landroid/content/pm/ActivityInfo;

    .line 377
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    goto :goto_41

    :cond_40
    move v1, v2

    .line 374
    :goto_41
    return v1
.end method

.method private static blacklist areBundlesEqualRoughly(Landroid/os/BaseBundle;Landroid/os/BaseBundle;)Z
    .registers 4
    .param p0, "a"    # Landroid/os/BaseBundle;
    .param p1, "b"    # Landroid/os/BaseBundle;

    .line 392
    invoke-static {p0}, Landroid/app/servertransaction/LaunchActivityItem;->getRoughBundleHashCode(Landroid/os/BaseBundle;)I

    move-result v0

    invoke-static {p1}, Landroid/app/servertransaction/LaunchActivityItem;->getRoughBundleHashCode(Landroid/os/BaseBundle;)I

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private static blacklist getRoughBundleHashCode(Landroid/os/BaseBundle;)I
    .registers 2
    .param p0, "bundle"    # Landroid/os/BaseBundle;

    .line 387
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/os/BaseBundle;->isDefinitelyEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 314
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 315
    return v0

    .line 317
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_f0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    goto/16 :goto_f0

    .line 320
    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/app/servertransaction/LaunchActivityItem;

    .line 321
    .local v2, "other":Landroid/app/servertransaction/LaunchActivityItem;
    iget-object v3, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIntent:Landroid/content/Intent;

    if-nez v3, :cond_1e

    iget-object v3, v2, Landroid/app/servertransaction/LaunchActivityItem;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_2c

    :cond_1e
    iget-object v3, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_2e

    iget-object v3, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIntent:Landroid/content/Intent;

    iget-object v4, v2, Landroid/app/servertransaction/LaunchActivityItem;->mIntent:Landroid/content/Intent;

    .line 322
    invoke-virtual {v3, v4}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_2e

    :cond_2c
    move v3, v0

    goto :goto_2f

    :cond_2e
    move v3, v1

    .line 323
    .local v3, "intentsEqual":Z
    :goto_2f
    if-eqz v3, :cond_ee

    iget-object v4, p0, Landroid/app/servertransaction/LaunchActivityItem;->mActivityToken:Landroid/os/IBinder;

    iget-object v5, v2, Landroid/app/servertransaction/LaunchActivityItem;->mActivityToken:Landroid/os/IBinder;

    .line 324
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ee

    iget v4, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIdent:I

    iget v5, v2, Landroid/app/servertransaction/LaunchActivityItem;->mIdent:I

    if-ne v4, v5, :cond_ee

    iget-object v4, v2, Landroid/app/servertransaction/LaunchActivityItem;->mInfo:Landroid/content/pm/ActivityInfo;

    .line 325
    invoke-direct {p0, v4}, Landroid/app/servertransaction/LaunchActivityItem;->activityInfoEqual(Landroid/content/pm/ActivityInfo;)Z

    move-result v4

    if-eqz v4, :cond_ee

    iget-object v4, p0, Landroid/app/servertransaction/LaunchActivityItem;->mCurConfig:Landroid/content/res/Configuration;

    iget-object v5, v2, Landroid/app/servertransaction/LaunchActivityItem;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ee

    iget-object v4, p0, Landroid/app/servertransaction/LaunchActivityItem;->mOverrideConfig:Landroid/content/res/Configuration;

    iget-object v5, v2, Landroid/app/servertransaction/LaunchActivityItem;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 326
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ee

    iget v4, p0, Landroid/app/servertransaction/LaunchActivityItem;->mDeviceId:I

    iget v5, v2, Landroid/app/servertransaction/LaunchActivityItem;->mDeviceId:I

    if-ne v4, v5, :cond_ee

    iget-object v4, p0, Landroid/app/servertransaction/LaunchActivityItem;->mReferrer:Ljava/lang/String;

    iget-object v5, v2, Landroid/app/servertransaction/LaunchActivityItem;->mReferrer:Ljava/lang/String;

    .line 328
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ee

    iget v4, p0, Landroid/app/servertransaction/LaunchActivityItem;->mProcState:I

    iget v5, v2, Landroid/app/servertransaction/LaunchActivityItem;->mProcState:I

    if-ne v4, v5, :cond_ee

    iget-object v4, p0, Landroid/app/servertransaction/LaunchActivityItem;->mState:Landroid/os/Bundle;

    iget-object v5, v2, Landroid/app/servertransaction/LaunchActivityItem;->mState:Landroid/os/Bundle;

    .line 329
    invoke-static {v4, v5}, Landroid/app/servertransaction/LaunchActivityItem;->areBundlesEqualRoughly(Landroid/os/BaseBundle;Landroid/os/BaseBundle;)Z

    move-result v4

    if-eqz v4, :cond_ee

    iget-object v4, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPersistentState:Landroid/os/PersistableBundle;

    iget-object v5, v2, Landroid/app/servertransaction/LaunchActivityItem;->mPersistentState:Landroid/os/PersistableBundle;

    .line 330
    invoke-static {v4, v5}, Landroid/app/servertransaction/LaunchActivityItem;->areBundlesEqualRoughly(Landroid/os/BaseBundle;Landroid/os/BaseBundle;)Z

    move-result v4

    if-eqz v4, :cond_ee

    iget-object v4, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPendingResults:Ljava/util/List;

    iget-object v5, v2, Landroid/app/servertransaction/LaunchActivityItem;->mPendingResults:Ljava/util/List;

    .line 331
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ee

    iget-object v4, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPendingNewIntents:Ljava/util/List;

    iget-object v5, v2, Landroid/app/servertransaction/LaunchActivityItem;->mPendingNewIntents:Ljava/util/List;

    .line 332
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ee

    iget-object v4, p0, Landroid/app/servertransaction/LaunchActivityItem;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    if-nez v4, :cond_a1

    move v4, v0

    goto :goto_a2

    :cond_a1
    move v4, v1

    :goto_a2
    iget-object v5, v2, Landroid/app/servertransaction/LaunchActivityItem;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    if-nez v5, :cond_a8

    move v5, v0

    goto :goto_a9

    :cond_a8
    move v5, v1

    :goto_a9
    if-ne v4, v5, :cond_ee

    iget-boolean v4, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIsForward:Z

    iget-boolean v5, v2, Landroid/app/servertransaction/LaunchActivityItem;->mIsForward:Z

    if-ne v4, v5, :cond_ee

    iget-object v4, p0, Landroid/app/servertransaction/LaunchActivityItem;->mProfilerInfo:Landroid/app/ProfilerInfo;

    iget-object v5, v2, Landroid/app/servertransaction/LaunchActivityItem;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 335
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ee

    iget-object v4, p0, Landroid/app/servertransaction/LaunchActivityItem;->mAssistToken:Landroid/os/IBinder;

    iget-object v5, v2, Landroid/app/servertransaction/LaunchActivityItem;->mAssistToken:Landroid/os/IBinder;

    .line 336
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ee

    iget-object v4, p0, Landroid/app/servertransaction/LaunchActivityItem;->mShareableActivityToken:Landroid/os/IBinder;

    iget-object v5, v2, Landroid/app/servertransaction/LaunchActivityItem;->mShareableActivityToken:Landroid/os/IBinder;

    .line 337
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ee

    iget-object v4, p0, Landroid/app/servertransaction/LaunchActivityItem;->mTaskFragmentToken:Landroid/os/IBinder;

    iget-object v5, v2, Landroid/app/servertransaction/LaunchActivityItem;->mTaskFragmentToken:Landroid/os/IBinder;

    .line 338
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ee

    iget-object v4, p0, Landroid/app/servertransaction/LaunchActivityItem;->mInitialCallerInfoAccessToken:Landroid/os/IBinder;

    iget-object v5, v2, Landroid/app/servertransaction/LaunchActivityItem;->mInitialCallerInfoAccessToken:Landroid/os/IBinder;

    .line 339
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ee

    iget-object v4, p0, Landroid/app/servertransaction/LaunchActivityItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    iget-object v5, v2, Landroid/app/servertransaction/LaunchActivityItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    .line 341
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ee

    goto :goto_ef

    :cond_ee
    move v0, v1

    .line 323
    :goto_ef
    return v0

    .line 318
    .end local v2    # "other":Landroid/app/servertransaction/LaunchActivityItem;
    .end local v3    # "intentsEqual":Z
    :cond_f0
    :goto_f0
    return v1
.end method

.method public blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 31
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 216
    move-object/from16 v0, p0

    const-string v1, "activityStart"

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 217
    new-instance v4, Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v5, v0, Landroid/app/servertransaction/LaunchActivityItem;->mActivityToken:Landroid/os/IBinder;

    iget-object v6, v0, Landroid/app/servertransaction/LaunchActivityItem;->mIntent:Landroid/content/Intent;

    iget v7, v0, Landroid/app/servertransaction/LaunchActivityItem;->mIdent:I

    iget-object v8, v0, Landroid/app/servertransaction/LaunchActivityItem;->mInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v0, Landroid/app/servertransaction/LaunchActivityItem;->mOverrideConfig:Landroid/content/res/Configuration;

    iget-object v10, v0, Landroid/app/servertransaction/LaunchActivityItem;->mReferrer:Ljava/lang/String;

    iget-object v11, v0, Landroid/app/servertransaction/LaunchActivityItem;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iget-object v12, v0, Landroid/app/servertransaction/LaunchActivityItem;->mState:Landroid/os/Bundle;

    iget-object v13, v0, Landroid/app/servertransaction/LaunchActivityItem;->mPersistentState:Landroid/os/PersistableBundle;

    iget-object v14, v0, Landroid/app/servertransaction/LaunchActivityItem;->mPendingResults:Ljava/util/List;

    iget-object v15, v0, Landroid/app/servertransaction/LaunchActivityItem;->mPendingNewIntents:Ljava/util/List;

    iget-object v1, v0, Landroid/app/servertransaction/LaunchActivityItem;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    move-wide/from16 v26, v2

    iget-boolean v2, v0, Landroid/app/servertransaction/LaunchActivityItem;->mIsForward:Z

    iget-object v3, v0, Landroid/app/servertransaction/LaunchActivityItem;->mProfilerInfo:Landroid/app/ProfilerInfo;

    move-object/from16 v16, v1

    iget-object v1, v0, Landroid/app/servertransaction/LaunchActivityItem;->mAssistToken:Landroid/os/IBinder;

    move-object/from16 v20, v1

    iget-object v1, v0, Landroid/app/servertransaction/LaunchActivityItem;->mShareableActivityToken:Landroid/os/IBinder;

    move-object/from16 v21, v1

    iget-boolean v1, v0, Landroid/app/servertransaction/LaunchActivityItem;->mLaunchedFromBubble:Z

    move/from16 v22, v1

    iget-object v1, v0, Landroid/app/servertransaction/LaunchActivityItem;->mTaskFragmentToken:Landroid/os/IBinder;

    move-object/from16 v23, v1

    iget-object v1, v0, Landroid/app/servertransaction/LaunchActivityItem;->mInitialCallerInfoAccessToken:Landroid/os/IBinder;

    move-object/from16 v24, v1

    iget-object v1, v0, Landroid/app/servertransaction/LaunchActivityItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    move-object/from16 v19, p1

    move-object/from16 v25, v1

    move/from16 v17, v2

    move-object/from16 v18, v3

    invoke-direct/range {v4 .. v25}, Landroid/app/ActivityThread$ActivityClientRecord;-><init>(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;Landroid/app/ActivityOptions$SceneTransitionInfo;ZLandroid/app/ProfilerInfo;Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;Landroid/os/IBinder;ZLandroid/os/IBinder;Landroid/os/IBinder;Landroid/window/ActivityWindowInfo;)V

    .line 222
    .local v4, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iget v1, v0, Landroid/app/servertransaction/LaunchActivityItem;->mDeviceId:I

    const/4 v2, 0x0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    invoke-virtual {v3, v4, v5, v1, v2}, Landroid/app/ClientTransactionHandler;->handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;ILandroid/content/Intent;)Landroid/app/Activity;

    .line 223
    invoke-static/range {v26 .. v27}, Landroid/os/Trace;->traceEnd(J)V

    .line 224
    return-void
.end method

.method public blacklist getActivityToken()Landroid/os/IBinder;
    .registers 2

    .line 236
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mActivityToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 346
    const/16 v0, 0x11

    .line 347
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/LaunchActivityItem;->mActivityToken:Landroid/os/IBinder;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 348
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->filterHashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 349
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIdent:I

    add-int/2addr v1, v2

    .line 350
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/LaunchActivityItem;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 351
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/LaunchActivityItem;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 352
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/servertransaction/LaunchActivityItem;->mDeviceId:I

    add-int/2addr v0, v2

    .line 353
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/LaunchActivityItem;->mReferrer:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 354
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/servertransaction/LaunchActivityItem;->mProcState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 355
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/LaunchActivityItem;->mState:Landroid/os/Bundle;

    invoke-static {v2}, Landroid/app/servertransaction/LaunchActivityItem;->getRoughBundleHashCode(Landroid/os/BaseBundle;)I

    move-result v2

    add-int/2addr v1, v2

    .line 356
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPersistentState:Landroid/os/PersistableBundle;

    invoke-static {v2}, Landroid/app/servertransaction/LaunchActivityItem;->getRoughBundleHashCode(Landroid/os/BaseBundle;)I

    move-result v2

    add-int/2addr v0, v2

    .line 357
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPendingResults:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 358
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPendingNewIntents:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 359
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/LaunchActivityItem;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    if-eqz v2, :cond_72

    const/4 v2, 0x1

    goto :goto_73

    :cond_72
    const/4 v2, 0x0

    :goto_73
    add-int/2addr v1, v2

    .line 360
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIsForward:Z

    add-int/2addr v0, v2

    .line 361
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/LaunchActivityItem;->mProfilerInfo:Landroid/app/ProfilerInfo;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 362
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/LaunchActivityItem;->mAssistToken:Landroid/os/IBinder;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 363
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/LaunchActivityItem;->mShareableActivityToken:Landroid/os/IBinder;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 364
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/LaunchActivityItem;->mTaskFragmentToken:Landroid/os/IBinder;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 365
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/LaunchActivityItem;->mInitialCallerInfoAccessToken:Landroid/os/IBinder;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 366
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/LaunchActivityItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 367
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public blacklist postExecute(Landroid/app/ClientTransactionHandler;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 4
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 229
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/ClientTransactionHandler;->countLaunchingActivities(I)V

    .line 230
    return-void
.end method

.method public blacklist preExecute(Landroid/app/ClientTransactionHandler;)V
    .registers 4
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;

    .line 203
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ClientTransactionHandler;->countLaunchingActivities(I)V

    .line 204
    iget v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mProcState:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/ClientTransactionHandler;->updateProcessState(IZ)V

    .line 205
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {v0}, Landroid/content/res/CompatibilityInfo;->applyOverrideIfNeeded(Landroid/content/res/Configuration;)V

    .line 206
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-static {v0}, Landroid/content/res/CompatibilityInfo;->applyOverrideIfNeeded(Landroid/content/res/Configuration;)V

    .line 207
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Landroid/app/ClientTransactionHandler;->updatePendingConfiguration(Landroid/content/res/Configuration;)V

    .line 208
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mActivityClientController:Landroid/app/IActivityClientController;

    if-eqz v0, :cond_22

    .line 209
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mActivityClientController:Landroid/app/IActivityClientController;

    invoke-static {v0}, Landroid/app/ActivityClient;->setActivityClientController(Landroid/app/IActivityClientController;)Landroid/app/IActivityClientController;

    .line 211
    :cond_22
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LaunchActivityItem{activityToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ident="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIdent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",curConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",overrideConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mDeviceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",referrer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mReferrer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",procState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mProcState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",persistentState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPersistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",pendingResults="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPendingResults:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",pendingNewIntents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPendingNewIntents:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",sceneTransitionInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",profilerInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mProfilerInfo:Landroid/app/ProfilerInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",assistToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mAssistToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",shareableActivityToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mShareableActivityToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",activityWindowInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 244
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 245
    iget v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIdent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 247
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 248
    iget v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mDeviceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mReferrer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 251
    iget v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mProcState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 253
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPersistentState:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    .line 254
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPendingResults:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 255
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPendingNewIntents:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 256
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 257
    iget-boolean v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIsForward:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 258
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mProfilerInfo:Landroid/app/ProfilerInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 259
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mAssistToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 260
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mActivityClientController:Landroid/app/IActivityClientController;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 261
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mShareableActivityToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 262
    iget-boolean v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mLaunchedFromBubble:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 263
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mTaskFragmentToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 264
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mInitialCallerInfoAccessToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 265
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 267
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 268
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 269
    return-void
.end method

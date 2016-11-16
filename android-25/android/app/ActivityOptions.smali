.class public Landroid/app/ActivityOptions;
.super Ljava/lang/Object;
.source "ActivityOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityOptions$HideWindowListener;,
        Landroid/app/ActivityOptions$OnAnimationFinishedListener;,
        Landroid/app/ActivityOptions$OnAnimationStartedListener;
    }
.end annotation


# static fields
.field public static final ANIM_CLIP_REVEAL:I = 0xb

.field public static final ANIM_CUSTOM:I = 0x1

.field public static final ANIM_CUSTOM_IN_PLACE:I = 0xa

.field public static final ANIM_DEFAULT:I = 0x6

.field public static final ANIM_LAUNCH_TASK_BEHIND:I = 0x7

.field public static final ANIM_NONE:I = 0x0

.field public static final ANIM_SCALE_UP:I = 0x2

.field public static final ANIM_SCENE_TRANSITION:I = 0x5

.field public static final ANIM_THUMBNAIL_ASPECT_SCALE_DOWN:I = 0x9

.field public static final ANIM_THUMBNAIL_ASPECT_SCALE_UP:I = 0x8

.field public static final ANIM_THUMBNAIL_SCALE_DOWN:I = 0x4

.field public static final ANIM_THUMBNAIL_SCALE_UP:I = 0x3

.field public static final EXTRA_USAGE_TIME_REPORT:Ljava/lang/String; = "android.activity.usage_time"

.field public static final EXTRA_USAGE_TIME_REPORT_PACKAGES:Ljava/lang/String; = "android.usage_time_packages"

.field private static final KEY_ANIMATION_FINISHED_LISTENER:Ljava/lang/String; = "android:activity.animationFinishedListener"

.field public static final KEY_ANIM_ENTER_RES_ID:Ljava/lang/String; = "android:activity.animEnterRes"

.field public static final KEY_ANIM_EXIT_RES_ID:Ljava/lang/String; = "android:activity.animExitRes"

.field public static final KEY_ANIM_HEIGHT:Ljava/lang/String; = "android:activity.animHeight"

.field public static final KEY_ANIM_IN_PLACE_RES_ID:Ljava/lang/String; = "android:activity.animInPlaceRes"

.field private static final KEY_ANIM_SPECS:Ljava/lang/String; = "android:activity.animSpecs"

.field public static final KEY_ANIM_START_LISTENER:Ljava/lang/String; = "android:activity.animStartListener"

.field public static final KEY_ANIM_START_X:Ljava/lang/String; = "android:activity.animStartX"

.field public static final KEY_ANIM_START_Y:Ljava/lang/String; = "android:activity.animStartY"

.field public static final KEY_ANIM_THUMBNAIL:Ljava/lang/String; = "android:activity.animThumbnail"

.field public static final KEY_ANIM_TYPE:Ljava/lang/String; = "android:activity.animType"

.field public static final KEY_ANIM_WIDTH:Ljava/lang/String; = "android:activity.animWidth"

.field private static final KEY_DOCK_CREATE_MODE:Ljava/lang/String; = "android:activity.dockCreateMode"

.field private static final KEY_EXIT_COORDINATOR_INDEX:Ljava/lang/String; = "android:activity.exitCoordinatorIndex"

.field public static final KEY_LAUNCH_BOUNDS:Ljava/lang/String; = "android:activity.launchBounds"

.field private static final KEY_LAUNCH_STACK_ID:Ljava/lang/String; = "android.activity.launchStackId"

.field private static final KEY_LAUNCH_TASK_ID:Ljava/lang/String; = "android.activity.launchTaskId"

.field public static final KEY_PACKAGE_NAME:Ljava/lang/String; = "android:activity.packageName"

.field private static final KEY_RESULT_CODE:Ljava/lang/String; = "android:activity.resultCode"

.field private static final KEY_RESULT_DATA:Ljava/lang/String; = "android:activity.resultData"

.field private static final KEY_ROTATION_ANIMATION_HINT:Ljava/lang/String; = "android:activity.rotationAnimationHint"

.field private static final KEY_TASK_OVERLAY:Ljava/lang/String; = "android.activity.taskOverlay"

.field private static final KEY_TRANSITION_COMPLETE_LISTENER:Ljava/lang/String; = "android:activity.transitionCompleteListener"

.field private static final KEY_TRANSITION_IS_RETURNING:Ljava/lang/String; = "android:activity.transitionIsReturning"

.field private static final KEY_TRANSITION_SHARED_ELEMENTS:Ljava/lang/String; = "android:activity.sharedElementNames"

.field private static final KEY_USAGE_TIME_REPORT:Ljava/lang/String; = "android:activity.usageTimeReport"

.field private static final TAG:Ljava/lang/String; = "ActivityOptions"


# instance fields
.field private mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

.field private mAnimationFinishedListener:Landroid/os/IRemoteCallback;

.field private mAnimationStartedListener:Landroid/os/IRemoteCallback;

.field private mAnimationType:I

.field private mCustomEnterResId:I

.field private mCustomExitResId:I

.field private mCustomInPlaceResId:I

.field private mDockCreateMode:I

.field private mExitCoordinatorIndex:I

.field private mHeight:I

.field private mIsReturning:Z

.field private mLaunchBounds:Landroid/graphics/Rect;

.field private mLaunchStackId:I

.field private mLaunchTaskId:I

.field private mPackageName:Ljava/lang/String;

.field private mResultCode:I

.field private mResultData:Landroid/content/Intent;

.field private mRotationAnimationHint:I

.field private mSharedElementNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStartX:I

.field private mStartY:I

.field private mTaskOverlay:Z

.field private mThumbnail:Landroid/graphics/Bitmap;

.field private mTransitionReceiver:Landroid/os/ResultReceiver;

.field private mUsageTimeReport:Landroid/app/PendingIntent;

.field private mWidth:I


# direct methods
.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, -0x1

    #@2
    .line 794
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 225
    iput v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@7
    .line 243
    iput v0, p0, Landroid/app/ActivityOptions;->mLaunchStackId:I

    #@9
    .line 244
    iput v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    #@b
    .line 245
    iput v1, p0, Landroid/app/ActivityOptions;->mDockCreateMode:I

    #@d
    .line 248
    iput v0, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    #@f
    .line 794
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "opts"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 798
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 225
    iput v4, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@7
    .line 243
    iput v5, p0, Landroid/app/ActivityOptions;->mLaunchStackId:I

    #@9
    .line 244
    iput v5, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    #@b
    .line 245
    iput v4, p0, Landroid/app/ActivityOptions;->mDockCreateMode:I

    #@d
    .line 248
    iput v5, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    #@f
    .line 801
    const/4 v3, 0x1

    #@10
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->setDefusable(Z)V

    #@13
    .line 803
    const-string/jumbo v3, "android:activity.packageName"

    #@16
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    iput-object v3, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    #@1c
    .line 805
    :try_start_0
    const-string/jumbo v3, "android:activity.usageTimeReport"

    #@1f
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@22
    move-result-object v3

    #@23
    check-cast v3, Landroid/app/PendingIntent;

    #@25
    iput-object v3, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@27
    .line 809
    :goto_0
    const-string/jumbo v3, "android:activity.launchBounds"

    #@2a
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@2d
    move-result-object v3

    #@2e
    check-cast v3, Landroid/graphics/Rect;

    #@30
    iput-object v3, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    #@32
    .line 810
    const-string/jumbo v3, "android:activity.animType"

    #@35
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@38
    move-result v3

    #@39
    iput v3, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@3b
    .line 811
    iget v3, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@3d
    packed-switch v3, :pswitch_data_0

    #@40
    .line 853
    :goto_1
    :pswitch_0
    const-string/jumbo v3, "android.activity.launchStackId"

    #@43
    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@46
    move-result v3

    #@47
    iput v3, p0, Landroid/app/ActivityOptions;->mLaunchStackId:I

    #@49
    .line 854
    const-string/jumbo v3, "android.activity.launchTaskId"

    #@4c
    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@4f
    move-result v3

    #@50
    iput v3, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    #@52
    .line 855
    const-string/jumbo v3, "android.activity.taskOverlay"

    #@55
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@58
    move-result v3

    #@59
    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mTaskOverlay:Z

    #@5b
    .line 856
    const-string/jumbo v3, "android:activity.dockCreateMode"

    #@5e
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@61
    move-result v3

    #@62
    iput v3, p0, Landroid/app/ActivityOptions;->mDockCreateMode:I

    #@64
    .line 857
    const-string/jumbo v3, "android:activity.animSpecs"

    #@67
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@6a
    move-result v3

    #@6b
    if-eqz v3, :cond_0

    #@6d
    .line 858
    const-string/jumbo v3, "android:activity.animSpecs"

    #@70
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    #@73
    move-result-object v2

    #@74
    .line 859
    .local v2, "specs":[Landroid/os/Parcelable;
    array-length v3, v2

    #@75
    new-array v3, v3, [Landroid/view/AppTransitionAnimationSpec;

    #@77
    iput-object v3, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    #@79
    .line 860
    array-length v3, v2

    #@7a
    add-int/lit8 v1, v3, -0x1

    #@7c
    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_0

    #@7e
    .line 861
    iget-object v4, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    #@80
    aget-object v3, v2, v1

    #@82
    check-cast v3, Landroid/view/AppTransitionAnimationSpec;

    #@84
    aput-object v3, v4, v1

    #@86
    .line 860
    add-int/lit8 v1, v1, -0x1

    #@88
    goto :goto_2

    #@89
    .line 806
    .end local v1    # "i":I
    .end local v2    # "specs":[Landroid/os/Parcelable;
    :catch_0
    move-exception v0

    #@8a
    .line 807
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "ActivityOptions"

    #@8d
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    #@90
    goto :goto_0

    #@91
    .line 813
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :pswitch_1
    const-string/jumbo v3, "android:activity.animEnterRes"

    #@94
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@97
    move-result v3

    #@98
    iput v3, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    #@9a
    .line 814
    const-string/jumbo v3, "android:activity.animExitRes"

    #@9d
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@a0
    move-result v3

    #@a1
    iput v3, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    #@a3
    .line 816
    const-string/jumbo v3, "android:activity.animStartListener"

    #@a6
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    #@a9
    move-result-object v3

    #@aa
    .line 815
    invoke-static {v3}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    #@ad
    move-result-object v3

    #@ae
    iput-object v3, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@b0
    goto :goto_1

    #@b1
    .line 820
    :pswitch_2
    const-string/jumbo v3, "android:activity.animInPlaceRes"

    #@b4
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@b7
    move-result v3

    #@b8
    iput v3, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    #@ba
    goto :goto_1

    #@bb
    .line 825
    :pswitch_3
    const-string/jumbo v3, "android:activity.animStartX"

    #@be
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@c1
    move-result v3

    #@c2
    iput v3, p0, Landroid/app/ActivityOptions;->mStartX:I

    #@c4
    .line 826
    const-string/jumbo v3, "android:activity.animStartY"

    #@c7
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@ca
    move-result v3

    #@cb
    iput v3, p0, Landroid/app/ActivityOptions;->mStartY:I

    #@cd
    .line 827
    const-string/jumbo v3, "android:activity.animWidth"

    #@d0
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@d3
    move-result v3

    #@d4
    iput v3, p0, Landroid/app/ActivityOptions;->mWidth:I

    #@d6
    .line 828
    const-string/jumbo v3, "android:activity.animHeight"

    #@d9
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@dc
    move-result v3

    #@dd
    iput v3, p0, Landroid/app/ActivityOptions;->mHeight:I

    #@df
    goto/16 :goto_1

    #@e1
    .line 835
    :pswitch_4
    const-string/jumbo v3, "android:activity.animThumbnail"

    #@e4
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@e7
    move-result-object v3

    #@e8
    check-cast v3, Landroid/graphics/Bitmap;

    #@ea
    iput-object v3, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    #@ec
    .line 836
    const-string/jumbo v3, "android:activity.animStartX"

    #@ef
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@f2
    move-result v3

    #@f3
    iput v3, p0, Landroid/app/ActivityOptions;->mStartX:I

    #@f5
    .line 837
    const-string/jumbo v3, "android:activity.animStartY"

    #@f8
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@fb
    move-result v3

    #@fc
    iput v3, p0, Landroid/app/ActivityOptions;->mStartY:I

    #@fe
    .line 838
    const-string/jumbo v3, "android:activity.animWidth"

    #@101
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@104
    move-result v3

    #@105
    iput v3, p0, Landroid/app/ActivityOptions;->mWidth:I

    #@107
    .line 839
    const-string/jumbo v3, "android:activity.animHeight"

    #@10a
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@10d
    move-result v3

    #@10e
    iput v3, p0, Landroid/app/ActivityOptions;->mHeight:I

    #@110
    .line 841
    const-string/jumbo v3, "android:activity.animStartListener"

    #@113
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    #@116
    move-result-object v3

    #@117
    .line 840
    invoke-static {v3}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    #@11a
    move-result-object v3

    #@11b
    iput-object v3, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@11d
    goto/16 :goto_1

    #@11f
    .line 845
    :pswitch_5
    const-string/jumbo v3, "android:activity.transitionCompleteListener"

    #@122
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@125
    move-result-object v3

    #@126
    check-cast v3, Landroid/os/ResultReceiver;

    #@128
    iput-object v3, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    #@12a
    .line 846
    const-string/jumbo v3, "android:activity.transitionIsReturning"

    #@12d
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@130
    move-result v3

    #@131
    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mIsReturning:Z

    #@133
    .line 847
    const-string/jumbo v3, "android:activity.sharedElementNames"

    #@136
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    #@139
    move-result-object v3

    #@13a
    iput-object v3, p0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    #@13c
    .line 848
    const-string/jumbo v3, "android:activity.resultData"

    #@13f
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@142
    move-result-object v3

    #@143
    check-cast v3, Landroid/content/Intent;

    #@145
    iput-object v3, p0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    #@147
    .line 849
    const-string/jumbo v3, "android:activity.resultCode"

    #@14a
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@14d
    move-result v3

    #@14e
    iput v3, p0, Landroid/app/ActivityOptions;->mResultCode:I

    #@150
    .line 850
    const-string/jumbo v3, "android:activity.exitCoordinatorIndex"

    #@153
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@156
    move-result v3

    #@157
    iput v3, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    #@159
    goto/16 :goto_1

    #@15b
    .line 864
    :cond_0
    const-string/jumbo v3, "android:activity.animationFinishedListener"

    #@15e
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@161
    move-result v3

    #@162
    if-eqz v3, :cond_1

    #@164
    .line 866
    const-string/jumbo v3, "android:activity.animationFinishedListener"

    #@167
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    #@16a
    move-result-object v3

    #@16b
    .line 865
    invoke-static {v3}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    #@16e
    move-result-object v3

    #@16f
    iput-object v3, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    #@171
    .line 868
    :cond_1
    const-string/jumbo v3, "android:activity.rotationAnimationHint"

    #@174
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@177
    move-result v3

    #@178
    iput v3, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    #@17a
    .line 798
    return-void

    #@17b
    .line 811
    nop

    #@17c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static abort(Landroid/app/ActivityOptions;)V
    .locals 0
    .param p0, "options"    # Landroid/app/ActivityOptions;

    #@0
    .prologue
    .line 1013
    if-eqz p0, :cond_0

    #@2
    .line 1014
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->abort()V

    #@5
    .line 1012
    :cond_0
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;
    .locals 1
    .param p0, "bOptions"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1008
    if-eqz p0, :cond_0

    #@3
    new-instance v0, Landroid/app/ActivityOptions;

    #@5
    invoke-direct {v0, p0}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    #@8
    :cond_0
    return-object v0
.end method

.method private static makeAspectScaledThumbnailAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;
    .locals 3
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "targetWidth"    # I
    .param p5, "targetHeight"    # I
    .param p6, "handler"    # Landroid/os/Handler;
    .param p7, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .param p8, "scaleUp"    # Z

    #@0
    .prologue
    .line 572
    new-instance v0, Landroid/app/ActivityOptions;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    #@5
    .line 573
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    iput-object v2, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    #@f
    .line 574
    if-eqz p8, :cond_0

    #@11
    const/16 v2, 0x8

    #@13
    :goto_0
    iput v2, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@15
    .line 576
    iput-object p1, v0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    #@17
    .line 577
    const/4 v2, 0x2

    #@18
    new-array v1, v2, [I

    #@1a
    .line 578
    .local v1, "pts":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    #@1d
    .line 579
    const/4 v2, 0x0

    #@1e
    aget v2, v1, v2

    #@20
    add-int/2addr v2, p2

    #@21
    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    #@23
    .line 580
    const/4 v2, 0x1

    #@24
    aget v2, v1, v2

    #@26
    add-int/2addr v2, p3

    #@27
    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    #@29
    .line 581
    iput p4, v0, Landroid/app/ActivityOptions;->mWidth:I

    #@2b
    .line 582
    iput p5, v0, Landroid/app/ActivityOptions;->mHeight:I

    #@2d
    .line 583
    invoke-direct {v0, p6, p7}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    #@30
    .line 584
    return-object v0

    #@31
    .line 575
    .end local v1    # "pts":[I
    :cond_0
    const/16 v2, 0x9

    #@33
    goto :goto_0
.end method

.method public static makeBasic()Landroid/app/ActivityOptions;
    .locals 1

    #@0
    .prologue
    .line 785
    new-instance v0, Landroid/app/ActivityOptions;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    #@5
    .line 786
    .local v0, "opts":Landroid/app/ActivityOptions;
    return-object v0
.end method

.method public static makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;
    .locals 3
    .param p0, "source"    # Landroid/view/View;
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    #@0
    .prologue
    .line 422
    new-instance v0, Landroid/app/ActivityOptions;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    #@5
    .line 423
    .local v0, "opts":Landroid/app/ActivityOptions;
    const/16 v2, 0xb

    #@7
    iput v2, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@9
    .line 424
    const/4 v2, 0x2

    #@a
    new-array v1, v2, [I

    #@c
    .line 425
    .local v1, "pts":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    #@f
    .line 426
    const/4 v2, 0x0

    #@10
    aget v2, v1, v2

    #@12
    add-int/2addr v2, p1

    #@13
    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    #@15
    .line 427
    const/4 v2, 0x1

    #@16
    aget v2, v1, v2

    #@18
    add-int/2addr v2, p2

    #@19
    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    #@1b
    .line 428
    iput p3, v0, Landroid/app/ActivityOptions;->mWidth:I

    #@1d
    .line 429
    iput p4, v0, Landroid/app/ActivityOptions;->mHeight:I

    #@1f
    .line 430
    return-object v0
.end method

.method public static makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enterResId"    # I
    .param p2, "exitResId"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 265
    invoke-static {p0, p1, p2, v0, v0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enterResId"    # I
    .param p2, "exitResId"    # I
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    #@0
    .prologue
    .line 289
    new-instance v0, Landroid/app/ActivityOptions;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    #@5
    .line 290
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    #@b
    .line 291
    const/4 v1, 0x1

    #@c
    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@e
    .line 292
    iput p1, v0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    #@10
    .line 293
    iput p2, v0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    #@12
    .line 294
    invoke-direct {v0, p3, p4}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    #@15
    .line 295
    return-object v0
.end method

.method public static makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "animId"    # I

    #@0
    .prologue
    .line 311
    if-nez p1, :cond_0

    #@2
    .line 312
    new-instance v1, Ljava/lang/RuntimeException;

    #@4
    const-string/jumbo v2, "You must specify a valid animation."

    #@7
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 315
    :cond_0
    new-instance v0, Landroid/app/ActivityOptions;

    #@d
    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    #@10
    .line 316
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    #@16
    .line 317
    const/16 v1, 0xa

    #@18
    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@1a
    .line 318
    iput p1, v0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    #@1c
    .line 319
    return-object v0
.end method

.method public static makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;
    .locals 4
    .param p0, "source"    # Landroid/view/View;
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    .line 394
    new-instance v0, Landroid/app/ActivityOptions;

    #@3
    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    #@6
    .line 395
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    iput-object v2, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    #@10
    .line 396
    iput v3, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@12
    .line 397
    new-array v1, v3, [I

    #@14
    .line 398
    .local v1, "pts":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    #@17
    .line 399
    const/4 v2, 0x0

    #@18
    aget v2, v1, v2

    #@1a
    add-int/2addr v2, p1

    #@1b
    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    #@1d
    .line 400
    const/4 v2, 0x1

    #@1e
    aget v2, v1, v2

    #@20
    add-int/2addr v2, p2

    #@21
    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    #@23
    .line 401
    iput p3, v0, Landroid/app/ActivityOptions;->mWidth:I

    #@25
    .line 402
    iput p4, v0, Landroid/app/ActivityOptions;->mHeight:I

    #@27
    .line 403
    return-object v0
.end method

.method static makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/app/ExitTransitionCoordinator;Ljava/util/ArrayList;ILandroid/content/Intent;)Landroid/app/ActivityOptions;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "exitCoordinator"    # Landroid/app/ExitTransitionCoordinator;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/app/ExitTransitionCoordinator;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/content/Intent;",
            ")",
            "Landroid/app/ActivityOptions;"
        }
    .end annotation

    #@0
    .prologue
    .line 752
    .local p2, "sharedElementNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/app/ActivityOptions;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    #@5
    .line 753
    .local v0, "opts":Landroid/app/ActivityOptions;
    const/4 v1, 0x5

    #@6
    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@8
    .line 754
    iput-object p2, v0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    #@a
    .line 755
    iput-object p1, v0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    #@c
    .line 756
    const/4 v1, 0x1

    #@d
    iput-boolean v1, v0, Landroid/app/ActivityOptions;->mIsReturning:Z

    #@f
    .line 757
    iput p3, v0, Landroid/app/ActivityOptions;->mResultCode:I

    #@11
    .line 758
    iput-object p4, v0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    #@13
    .line 760
    iget-object v1, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    #@15
    invoke-virtual {v1, p1}, Landroid/app/ActivityTransitionState;->addExitTransitionCoordinator(Landroid/app/ExitTransitionCoordinator;)I

    #@18
    move-result v1

    #@19
    .line 759
    iput v1, v0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    #@1b
    .line 761
    return-object v0
.end method

.method public static makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "sharedElement"    # Landroid/view/View;
    .param p2, "sharedElementName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 622
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Landroid/util/Pair;

    #@3
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {p0, v0}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public static varargs makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Landroid/util/Pair",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/ActivityOptions;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    #@0
    .prologue
    .line 647
    .local p1, "sharedElements":[Landroid/util/Pair;, "[Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    new-instance v0, Landroid/app/ActivityOptions;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    #@5
    .line 648
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@8
    move-result-object v1

    #@9
    .line 649
    iget-object v2, p0, Landroid/app/Activity;->mExitTransitionListener:Landroid/app/SharedElementCallback;

    #@b
    .line 648
    invoke-static {p0, v1, v0, v2, p1}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/Window;Landroid/app/ActivityOptions;Landroid/app/SharedElementCallback;[Landroid/util/Pair;)Landroid/app/ExitTransitionCoordinator;

    #@e
    .line 650
    return-object v0
.end method

.method static makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/Window;Landroid/app/ActivityOptions;Landroid/app/SharedElementCallback;[Landroid/util/Pair;)Landroid/app/ExitTransitionCoordinator;
    .locals 13
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "opts"    # Landroid/app/ActivityOptions;
    .param p3, "callback"    # Landroid/app/SharedElementCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/Window;",
            "Landroid/app/ActivityOptions;",
            "Landroid/app/SharedElementCallback;",
            "[",
            "Landroid/util/Pair",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/ExitTransitionCoordinator;"
        }
    .end annotation

    #@0
    .prologue
    .line 709
    .local p4, "sharedElements":[Landroid/util/Pair;, "[Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    const/16 v2, 0xd

    #@2
    invoke-virtual {p1, v2}, Landroid/view/Window;->hasFeature(I)Z

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_0

    #@8
    .line 710
    const/4 v2, 0x6

    #@9
    iput v2, p2, Landroid/app/ActivityOptions;->mAnimationType:I

    #@b
    .line 711
    const/4 v2, 0x0

    #@c
    return-object v2

    #@d
    .line 713
    :cond_0
    const/4 v2, 0x5

    #@e
    iput v2, p2, Landroid/app/ActivityOptions;->mAnimationType:I

    #@10
    .line 715
    new-instance v5, Ljava/util/ArrayList;

    #@12
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@15
    .line 716
    .local v5, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    #@17
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@1a
    .line 718
    .local v7, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p4, :cond_3

    #@1c
    .line 719
    const/4 v9, 0x0

    #@1d
    .local v9, "i":I
    :goto_0
    move-object/from16 v0, p4

    #@1f
    array-length v2, v0

    #@20
    if-ge v9, v2, :cond_3

    #@22
    .line 720
    aget-object v10, p4, v9

    #@24
    .line 721
    .local v10, "sharedElement":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    iget-object v11, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@26
    check-cast v11, Ljava/lang/String;

    #@28
    .line 722
    .local v11, "sharedElementName":Ljava/lang/String;
    if-nez v11, :cond_1

    #@2a
    .line 723
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@2c
    const-string/jumbo v3, "Shared element name must not be null"

    #@2f
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@32
    throw v2

    #@33
    .line 725
    :cond_1
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@36
    .line 726
    iget-object v12, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@38
    check-cast v12, Landroid/view/View;

    #@3a
    .line 727
    .local v12, "view":Landroid/view/View;
    if-nez v12, :cond_2

    #@3c
    .line 728
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@3e
    const-string/jumbo v3, "Shared element must not be null"

    #@41
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@44
    throw v2

    #@45
    .line 730
    :cond_2
    iget-object v2, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@47
    check-cast v2, Landroid/view/View;

    #@49
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4c
    .line 719
    add-int/lit8 v9, v9, 0x1

    #@4e
    goto :goto_0

    #@4f
    .line 734
    .end local v9    # "i":I
    .end local v10    # "sharedElement":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    .end local v11    # "sharedElementName":Ljava/lang/String;
    .end local v12    # "view":Landroid/view/View;
    :cond_3
    new-instance v1, Landroid/app/ExitTransitionCoordinator;

    #@51
    .line 735
    const/4 v8, 0x0

    #@52
    move-object v2, p0

    #@53
    move-object v3, p1

    #@54
    move-object/from16 v4, p3

    #@56
    move-object v6, v5

    #@57
    .line 734
    invoke-direct/range {v1 .. v8}, Landroid/app/ExitTransitionCoordinator;-><init>(Landroid/app/Activity;Landroid/view/Window;Landroid/app/SharedElementCallback;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    #@5a
    .line 736
    .local v1, "exit":Landroid/app/ExitTransitionCoordinator;
    iput-object v1, p2, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    #@5c
    .line 737
    iput-object v5, p2, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    #@5e
    .line 738
    if-nez p0, :cond_4

    #@60
    const/4 v2, 0x1

    #@61
    :goto_1
    iput-boolean v2, p2, Landroid/app/ActivityOptions;->mIsReturning:Z

    #@63
    .line 739
    if-nez p0, :cond_5

    #@65
    .line 740
    const/4 v2, -0x1

    #@66
    iput v2, p2, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    #@68
    .line 745
    :goto_2
    return-object v1

    #@69
    .line 738
    :cond_4
    const/4 v2, 0x0

    #@6a
    goto :goto_1

    #@6b
    .line 743
    :cond_5
    iget-object v2, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    #@6d
    invoke-virtual {v2, v1}, Landroid/app/ActivityTransitionState;->addExitTransitionCoordinator(Landroid/app/ExitTransitionCoordinator;)I

    #@70
    move-result v2

    #@71
    .line 742
    iput v2, p2, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    #@73
    goto :goto_2
.end method

.method public static makeTaskLaunchBehind()Landroid/app/ActivityOptions;
    .locals 2

    #@0
    .prologue
    .line 775
    new-instance v0, Landroid/app/ActivityOptions;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    #@5
    .line 776
    .local v0, "opts":Landroid/app/ActivityOptions;
    const/4 v1, 0x7

    #@6
    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@8
    .line 777
    return-object v0
.end method

.method private static makeThumbnailAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;
    .locals 3
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .param p5, "scaleUp"    # Z

    #@0
    .prologue
    .line 505
    new-instance v0, Landroid/app/ActivityOptions;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    #@5
    .line 506
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    iput-object v2, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    #@f
    .line 507
    if-eqz p5, :cond_0

    #@11
    const/4 v2, 0x3

    #@12
    :goto_0
    iput v2, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@14
    .line 508
    iput-object p1, v0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    #@16
    .line 509
    const/4 v2, 0x2

    #@17
    new-array v1, v2, [I

    #@19
    .line 510
    .local v1, "pts":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    #@1c
    .line 511
    const/4 v2, 0x0

    #@1d
    aget v2, v1, v2

    #@1f
    add-int/2addr v2, p2

    #@20
    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    #@22
    .line 512
    const/4 v2, 0x1

    #@23
    aget v2, v1, v2

    #@25
    add-int/2addr v2, p3

    #@26
    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    #@28
    .line 513
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    #@2b
    move-result-object v2

    #@2c
    invoke-direct {v0, v2, p4}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    #@2f
    .line 514
    return-object v0

    #@30
    .line 507
    .end local v1    # "pts":[I
    :cond_0
    const/4 v2, 0x4

    #@31
    goto :goto_0
.end method

.method public static makeThumbnailAspectScaleDownAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;
    .locals 9
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "targetWidth"    # I
    .param p5, "targetHeight"    # I
    .param p6, "handler"    # Landroid/os/Handler;
    .param p7, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    #@0
    .prologue
    .line 566
    const/4 v8, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move v5, p5

    #@7
    move-object v6, p6

    #@8
    move-object/from16 v7, p7

    #@a
    .line 565
    invoke-static/range {v0 .. v8}, Landroid/app/ActivityOptions;->makeAspectScaledThumbnailAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public static makeThumbnailAspectScaleDownAnimation(Landroid/view/View;[Landroid/view/AppTransitionAnimationSpec;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;
    .locals 2
    .param p0, "source"    # Landroid/view/View;
    .param p1, "specs"    # [Landroid/view/AppTransitionAnimationSpec;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "onAnimationStartedListener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .param p4, "onAnimationFinishedListener"    # Landroid/app/ActivityOptions$OnAnimationFinishedListener;

    #@0
    .prologue
    .line 592
    new-instance v0, Landroid/app/ActivityOptions;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    #@5
    .line 593
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    #@f
    .line 594
    const/16 v1, 0x9

    #@11
    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@13
    .line 595
    iput-object p1, v0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    #@15
    .line 596
    invoke-direct {v0, p2, p3}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    #@18
    .line 597
    invoke-direct {v0, p2, p4}, Landroid/app/ActivityOptions;->setOnAnimationFinishedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)V

    #@1b
    .line 598
    return-object v0
.end method

.method public static makeThumbnailAspectScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;
    .locals 9
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "targetWidth"    # I
    .param p5, "targetHeight"    # I
    .param p6, "handler"    # Landroid/os/Handler;
    .param p7, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    #@0
    .prologue
    .line 540
    const/4 v8, 0x1

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move v5, p5

    #@7
    move-object v6, p6

    #@8
    move-object/from16 v7, p7

    #@a
    .line 539
    invoke-static/range {v0 .. v8}, Landroid/app/ActivityOptions;->makeAspectScaledThumbnailAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public static makeThumbnailScaleDownAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;
    .locals 6
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    #@0
    .prologue
    .line 499
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move-object v4, p4

    #@6
    invoke-static/range {v0 .. v5}, Landroid/app/ActivityOptions;->makeThumbnailAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Landroid/app/ActivityOptions;
    .locals 1
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I

    #@0
    .prologue
    .line 454
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/ActivityOptions;->makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;
    .locals 6
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    #@0
    .prologue
    .line 477
    const/4 v5, 0x1

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move-object v4, p4

    #@6
    invoke-static/range {v0 .. v5}, Landroid/app/ActivityOptions;->makeThumbnailAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method private setOnAnimationFinishedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Landroid/app/ActivityOptions$OnAnimationFinishedListener;

    #@0
    .prologue
    .line 349
    if-eqz p2, :cond_0

    #@2
    .line 350
    new-instance v0, Landroid/app/ActivityOptions$2;

    #@4
    invoke-direct {v0, p0, p1, p2}, Landroid/app/ActivityOptions$2;-><init>(Landroid/app/ActivityOptions;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)V

    #@7
    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    #@9
    .line 348
    :cond_0
    return-void
.end method

.method private setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    #@0
    .prologue
    .line 324
    if-eqz p2, :cond_0

    #@2
    .line 325
    new-instance v0, Landroid/app/ActivityOptions$1;

    #@4
    invoke-direct {v0, p0, p1, p2}, Landroid/app/ActivityOptions$1;-><init>(Landroid/app/ActivityOptions;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    #@7
    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@9
    .line 323
    :cond_0
    return-void
.end method

.method public static varargs startSharedElementAnimation(Landroid/view/Window;[Landroid/util/Pair;)Landroid/app/ActivityOptions;
    .locals 5
    .param p0, "window"    # Landroid/view/Window;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Window;",
            "[",
            "Landroid/util/Pair",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/ActivityOptions;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    #@0
    .prologue
    .local p1, "sharedElements":[Landroid/util/Pair;, "[Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    const/4 v4, 0x0

    #@1
    .line 667
    new-instance v3, Landroid/app/ActivityOptions;

    #@3
    invoke-direct {v3}, Landroid/app/ActivityOptions;-><init>()V

    #@6
    .line 668
    .local v3, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@9
    move-result-object v0

    #@a
    .line 669
    .local v0, "decorView":Landroid/view/View;
    if-nez v0, :cond_0

    #@c
    .line 670
    return-object v3

    #@d
    .line 673
    :cond_0
    invoke-static {v4, p0, v3, v4, p1}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/Window;Landroid/app/ActivityOptions;Landroid/app/SharedElementCallback;[Landroid/util/Pair;)Landroid/app/ExitTransitionCoordinator;

    #@10
    move-result-object v1

    #@11
    .line 674
    .local v1, "exit":Landroid/app/ExitTransitionCoordinator;
    if-eqz v1, :cond_1

    #@13
    .line 675
    new-instance v2, Landroid/app/ActivityOptions$HideWindowListener;

    #@15
    invoke-direct {v2, p0, v1}, Landroid/app/ActivityOptions$HideWindowListener;-><init>(Landroid/view/Window;Landroid/app/ExitTransitionCoordinator;)V

    #@18
    .line 676
    .local v2, "listener":Landroid/app/ActivityOptions$HideWindowListener;
    invoke-virtual {v1, v2}, Landroid/app/ExitTransitionCoordinator;->setHideSharedElementsCallback(Landroid/app/ExitTransitionCoordinator$HideSharedElementsCallback;)V

    #@1b
    .line 677
    invoke-virtual {v1}, Landroid/app/ExitTransitionCoordinator;->startExit()V

    #@1e
    .line 679
    .end local v2    # "listener":Landroid/app/ActivityOptions$HideWindowListener;
    :cond_1
    return-object v3
.end method

.method public static stopSharedElementAnimation(Landroid/view/Window;)V
    .locals 4
    .param p0, "window"    # Landroid/view/Window;

    #@0
    .prologue
    const v3, 0x102005d

    #@3
    const/4 v2, 0x0

    #@4
    .line 690
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@7
    move-result-object v0

    #@8
    .line 691
    .local v0, "decorView":Landroid/view/View;
    if-nez v0, :cond_0

    #@a
    .line 692
    return-void

    #@b
    .line 695
    :cond_0
    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    .line 694
    check-cast v1, Landroid/app/ExitTransitionCoordinator;

    #@11
    .line 696
    .local v1, "exit":Landroid/app/ExitTransitionCoordinator;
    if-eqz v1, :cond_1

    #@13
    .line 697
    invoke-virtual {v1}, Landroid/app/ExitTransitionCoordinator;->cancelPendingTransitions()Z

    #@16
    .line 698
    invoke-virtual {v0, v3, v2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    #@19
    move-object v2, v0

    #@1a
    .line 699
    check-cast v2, Landroid/view/ViewGroup;

    #@1c
    invoke-static {v2}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    #@1f
    .line 700
    invoke-virtual {v1}, Landroid/app/ExitTransitionCoordinator;->resetViews()V

    #@22
    .line 701
    invoke-virtual {v1}, Landroid/app/ExitTransitionCoordinator;->clearState()V

    #@25
    .line 702
    const/4 v2, 0x0

    #@26
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    #@29
    .line 689
    :cond_1
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 3

    #@0
    .prologue
    .line 961
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 963
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@6
    const/4 v2, 0x0

    #@7
    invoke-interface {v1, v2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 960
    :cond_0
    :goto_0
    return-void

    #@b
    .line 964
    :catch_0
    move-exception v0

    #@c
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public forTargetActivity()Landroid/app/ActivityOptions;
    .locals 3

    #@0
    .prologue
    .line 1260
    iget v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@2
    const/4 v2, 0x5

    #@3
    if-ne v1, v2, :cond_0

    #@5
    .line 1261
    new-instance v0, Landroid/app/ActivityOptions;

    #@7
    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    #@a
    .line 1262
    .local v0, "result":Landroid/app/ActivityOptions;
    invoke-virtual {v0, p0}, Landroid/app/ActivityOptions;->update(Landroid/app/ActivityOptions;)V

    #@d
    .line 1263
    return-object v0

    #@e
    .line 1266
    .end local v0    # "result":Landroid/app/ActivityOptions;
    :cond_0
    const/4 v1, 0x0

    #@f
    return-object v1
.end method

.method public getAnimSpecs()[Landroid/view/AppTransitionAnimationSpec;
    .locals 1

    #@0
    .prologue
    .line 1004
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    #@2
    return-object v0
.end method

.method public getAnimationFinishedListener()Landroid/os/IRemoteCallback;
    .locals 1

    #@0
    .prologue
    .line 953
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    #@2
    return-object v0
.end method

.method public getAnimationType()I
    .locals 1

    #@0
    .prologue
    .line 903
    iget v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@2
    return v0
.end method

.method public getCustomEnterResId()I
    .locals 1

    #@0
    .prologue
    .line 908
    iget v0, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    #@2
    return v0
.end method

.method public getCustomExitResId()I
    .locals 1

    #@0
    .prologue
    .line 913
    iget v0, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    #@2
    return v0
.end method

.method public getCustomInPlaceResId()I
    .locals 1

    #@0
    .prologue
    .line 918
    iget v0, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    #@2
    return v0
.end method

.method public getDockCreateMode()I
    .locals 1

    #@0
    .prologue
    .line 1063
    iget v0, p0, Landroid/app/ActivityOptions;->mDockCreateMode:I

    #@2
    return v0
.end method

.method public getExitCoordinatorKey()I
    .locals 1

    #@0
    .prologue
    .line 957
    iget v0, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    #@2
    return v0
.end method

.method public getHeight()I
    .locals 1

    #@0
    .prologue
    .line 943
    iget v0, p0, Landroid/app/ActivityOptions;->mHeight:I

    #@2
    return v0
.end method

.method public getLaunchBounds()Landroid/graphics/Rect;
    .locals 1

    #@0
    .prologue
    .line 898
    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    #@2
    return-object v0
.end method

.method public getLaunchStackId()I
    .locals 1

    #@0
    .prologue
    .line 1020
    iget v0, p0, Landroid/app/ActivityOptions;->mLaunchStackId:I

    #@2
    return v0
.end method

.method public getLaunchTaskBehind()Z
    .locals 2

    #@0
    .prologue
    .line 791
    iget v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@2
    const/4 v1, 0x7

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

.method public getLaunchTaskId()I
    .locals 1

    #@0
    .prologue
    .line 1041
    iget v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    #@2
    return v0
.end method

.method public getOnAnimationStartListener()Landroid/os/IRemoteCallback;
    .locals 1

    #@0
    .prologue
    .line 948
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@2
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 888
    iget-object v0, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    #@0
    .prologue
    .line 993
    iget v0, p0, Landroid/app/ActivityOptions;->mResultCode:I

    #@2
    return v0
.end method

.method public getResultData()Landroid/content/Intent;
    .locals 1

    #@0
    .prologue
    .line 996
    iget-object v0, p0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    #@2
    return-object v0
.end method

.method public getResultReceiver()Landroid/os/ResultReceiver;
    .locals 1

    #@0
    .prologue
    .line 990
    iget-object v0, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    #@2
    return-object v0
.end method

.method public getRotationAnimationHint()I
    .locals 1

    #@0
    .prologue
    .line 1275
    iget v0, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    #@2
    return v0
.end method

.method public getSharedElementNames()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 986
    iget-object v0, p0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public getStartX()I
    .locals 1

    #@0
    .prologue
    .line 928
    iget v0, p0, Landroid/app/ActivityOptions;->mStartX:I

    #@2
    return v0
.end method

.method public getStartY()I
    .locals 1

    #@0
    .prologue
    .line 933
    iget v0, p0, Landroid/app/ActivityOptions;->mStartY:I

    #@2
    return v0
.end method

.method public getTaskOverlay()Z
    .locals 1

    #@0
    .prologue
    .line 1058
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mTaskOverlay:Z

    #@2
    return v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    #@0
    .prologue
    .line 923
    iget-object v0, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    #@2
    return-object v0
.end method

.method public getUsageTimeReport()Landroid/app/PendingIntent;
    .locals 1

    #@0
    .prologue
    .line 1000
    iget-object v0, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    #@2
    return-object v0
.end method

.method public getWidth()I
    .locals 1

    #@0
    .prologue
    .line 938
    iget v0, p0, Landroid/app/ActivityOptions;->mWidth:I

    #@2
    return v0
.end method

.method isCrossTask()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 981
    iget v1, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    #@3
    if-gez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public isReturning()Z
    .locals 1

    #@0
    .prologue
    .line 971
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mIsReturning:Z

    #@2
    return v0
.end method

.method public requestUsageTimeReport(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "receiver"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 1252
    iput-object p1, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    #@2
    .line 1251
    return-void
.end method

.method public setDockCreateMode(I)V
    .locals 0
    .param p1, "dockCreateMode"    # I

    #@0
    .prologue
    .line 1068
    iput p1, p0, Landroid/app/ActivityOptions;->mDockCreateMode:I

    #@2
    .line 1067
    return-void
.end method

.method public setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;
    .locals 1
    .param p1, "screenSpacePixelRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 882
    if-eqz p1, :cond_0

    #@3
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@8
    :cond_0
    iput-object v0, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    #@a
    .line 883
    return-object p0
.end method

.method public setLaunchStackId(I)V
    .locals 0
    .param p1, "launchStackId"    # I

    #@0
    .prologue
    .line 1026
    iput p1, p0, Landroid/app/ActivityOptions;->mLaunchStackId:I

    #@2
    .line 1025
    return-void
.end method

.method public setLaunchTaskId(I)V
    .locals 0
    .param p1, "taskId"    # I

    #@0
    .prologue
    .line 1034
    iput p1, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    #@2
    .line 1033
    return-void
.end method

.method public setRotationAnimationHint(I)V
    .locals 0
    .param p1, "hint"    # I

    #@0
    .prologue
    .line 1287
    iput p1, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    #@2
    .line 1286
    return-void
.end method

.method public setTaskOverlay(Z)V
    .locals 0
    .param p1, "taskOverlay"    # Z

    #@0
    .prologue
    .line 1051
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mTaskOverlay:Z

    #@2
    .line 1050
    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1158
    iget v2, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@3
    const/4 v3, 0x6

    #@4
    if-ne v2, v3, :cond_0

    #@6
    .line 1159
    return-object v1

    #@7
    .line 1161
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    #@9
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@c
    .line 1162
    .local v0, "b":Landroid/os/Bundle;
    iget-object v2, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    #@e
    if-eqz v2, :cond_1

    #@10
    .line 1163
    const-string/jumbo v2, "android:activity.packageName"

    #@13
    iget-object v3, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    #@15
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@18
    .line 1165
    :cond_1
    iget-object v2, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    #@1a
    if-eqz v2, :cond_2

    #@1c
    .line 1166
    const-string/jumbo v2, "android:activity.launchBounds"

    #@1f
    iget-object v3, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    #@21
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@24
    .line 1168
    :cond_2
    const-string/jumbo v2, "android:activity.animType"

    #@27
    iget v3, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@29
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@2c
    .line 1169
    iget-object v2, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    #@2e
    if-eqz v2, :cond_3

    #@30
    .line 1170
    const-string/jumbo v2, "android:activity.usageTimeReport"

    #@33
    iget-object v3, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    #@35
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@38
    .line 1172
    :cond_3
    iget v2, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@3a
    packed-switch v2, :pswitch_data_0

    #@3d
    .line 1212
    :goto_0
    :pswitch_0
    const-string/jumbo v1, "android.activity.launchStackId"

    #@40
    iget v2, p0, Landroid/app/ActivityOptions;->mLaunchStackId:I

    #@42
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@45
    .line 1213
    const-string/jumbo v1, "android.activity.launchTaskId"

    #@48
    iget v2, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    #@4a
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@4d
    .line 1214
    const-string/jumbo v1, "android.activity.taskOverlay"

    #@50
    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mTaskOverlay:Z

    #@52
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@55
    .line 1215
    const-string/jumbo v1, "android:activity.dockCreateMode"

    #@58
    iget v2, p0, Landroid/app/ActivityOptions;->mDockCreateMode:I

    #@5a
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@5d
    .line 1216
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    #@5f
    if-eqz v1, :cond_4

    #@61
    .line 1217
    const-string/jumbo v1, "android:activity.animSpecs"

    #@64
    iget-object v2, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    #@66
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    #@69
    .line 1219
    :cond_4
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    #@6b
    if-eqz v1, :cond_5

    #@6d
    .line 1220
    const-string/jumbo v1, "android:activity.animationFinishedListener"

    #@70
    iget-object v2, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    #@72
    invoke-interface {v2}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    #@75
    move-result-object v2

    #@76
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    #@79
    .line 1222
    :cond_5
    const-string/jumbo v1, "android:activity.rotationAnimationHint"

    #@7c
    iget v2, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    #@7e
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@81
    .line 1224
    return-object v0

    #@82
    .line 1174
    :pswitch_1
    const-string/jumbo v2, "android:activity.animEnterRes"

    #@85
    iget v3, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    #@87
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@8a
    .line 1175
    const-string/jumbo v2, "android:activity.animExitRes"

    #@8d
    iget v3, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    #@8f
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@92
    .line 1176
    const-string/jumbo v2, "android:activity.animStartListener"

    #@95
    iget-object v3, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@97
    if-eqz v3, :cond_6

    #@99
    .line 1177
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@9b
    invoke-interface {v1}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    #@9e
    move-result-object v1

    #@9f
    .line 1176
    :cond_6
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    #@a2
    goto :goto_0

    #@a3
    .line 1180
    :pswitch_2
    const-string/jumbo v1, "android:activity.animInPlaceRes"

    #@a6
    iget v2, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    #@a8
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@ab
    goto :goto_0

    #@ac
    .line 1184
    :pswitch_3
    const-string/jumbo v1, "android:activity.animStartX"

    #@af
    iget v2, p0, Landroid/app/ActivityOptions;->mStartX:I

    #@b1
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@b4
    .line 1185
    const-string/jumbo v1, "android:activity.animStartY"

    #@b7
    iget v2, p0, Landroid/app/ActivityOptions;->mStartY:I

    #@b9
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@bc
    .line 1186
    const-string/jumbo v1, "android:activity.animWidth"

    #@bf
    iget v2, p0, Landroid/app/ActivityOptions;->mWidth:I

    #@c1
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@c4
    .line 1187
    const-string/jumbo v1, "android:activity.animHeight"

    #@c7
    iget v2, p0, Landroid/app/ActivityOptions;->mHeight:I

    #@c9
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@cc
    goto/16 :goto_0

    #@ce
    .line 1193
    :pswitch_4
    const-string/jumbo v2, "android:activity.animThumbnail"

    #@d1
    iget-object v3, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    #@d3
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@d6
    .line 1194
    const-string/jumbo v2, "android:activity.animStartX"

    #@d9
    iget v3, p0, Landroid/app/ActivityOptions;->mStartX:I

    #@db
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@de
    .line 1195
    const-string/jumbo v2, "android:activity.animStartY"

    #@e1
    iget v3, p0, Landroid/app/ActivityOptions;->mStartY:I

    #@e3
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@e6
    .line 1196
    const-string/jumbo v2, "android:activity.animWidth"

    #@e9
    iget v3, p0, Landroid/app/ActivityOptions;->mWidth:I

    #@eb
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@ee
    .line 1197
    const-string/jumbo v2, "android:activity.animHeight"

    #@f1
    iget v3, p0, Landroid/app/ActivityOptions;->mHeight:I

    #@f3
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@f6
    .line 1198
    const-string/jumbo v2, "android:activity.animStartListener"

    #@f9
    iget-object v3, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@fb
    if-eqz v3, :cond_7

    #@fd
    .line 1199
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@ff
    invoke-interface {v1}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    #@102
    move-result-object v1

    #@103
    .line 1198
    :cond_7
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    #@106
    goto/16 :goto_0

    #@108
    .line 1202
    :pswitch_5
    iget-object v1, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    #@10a
    if-eqz v1, :cond_8

    #@10c
    .line 1203
    const-string/jumbo v1, "android:activity.transitionCompleteListener"

    #@10f
    iget-object v2, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    #@111
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@114
    .line 1205
    :cond_8
    const-string/jumbo v1, "android:activity.transitionIsReturning"

    #@117
    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mIsReturning:Z

    #@119
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@11c
    .line 1206
    const-string/jumbo v1, "android:activity.sharedElementNames"

    #@11f
    iget-object v2, p0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    #@121
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@124
    .line 1207
    const-string/jumbo v1, "android:activity.resultData"

    #@127
    iget-object v2, p0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    #@129
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@12c
    .line 1208
    const-string/jumbo v1, "android:activity.resultCode"

    #@12f
    iget v2, p0, Landroid/app/ActivityOptions;->mResultCode:I

    #@131
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@134
    .line 1209
    const-string/jumbo v1, "android:activity.exitCoordinatorIndex"

    #@137
    iget v2, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    #@139
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@13c
    goto/16 :goto_0

    #@13e
    .line 1172
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1293
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "ActivityOptions("

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->hashCode()I

    #@f
    move-result v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    const-string/jumbo v1, "), mPackageName="

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    iget-object v1, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    .line 1294
    const-string/jumbo v1, ", mAnimationType="

    #@24
    .line 1293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    .line 1294
    iget v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@2a
    .line 1293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    .line 1294
    const-string/jumbo v1, ", mStartX="

    #@31
    .line 1293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    .line 1294
    iget v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    #@37
    .line 1293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    .line 1294
    const-string/jumbo v1, ", mStartY="

    #@3e
    .line 1293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v0

    #@42
    .line 1295
    iget v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    #@44
    .line 1293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v0

    #@48
    .line 1295
    const-string/jumbo v1, ", mWidth="

    #@4b
    .line 1293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v0

    #@4f
    .line 1295
    iget v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    #@51
    .line 1293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@54
    move-result-object v0

    #@55
    .line 1295
    const-string/jumbo v1, ", mHeight="

    #@58
    .line 1293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v0

    #@5c
    .line 1295
    iget v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    #@5e
    .line 1293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@61
    move-result-object v0

    #@62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v0

    #@66
    return-object v0
.end method

.method public update(Landroid/app/ActivityOptions;)V
    .locals 4
    .param p1, "otherOptions"    # Landroid/app/ActivityOptions;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 1077
    iget-object v1, p1, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 1078
    iget-object v1, p1, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    #@8
    iput-object v1, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    #@a
    .line 1080
    :cond_0
    iget-object v1, p1, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    #@c
    iput-object v1, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    #@e
    .line 1081
    iput-object v3, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    #@10
    .line 1082
    iput-object v3, p0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    #@12
    .line 1083
    iput-boolean v2, p0, Landroid/app/ActivityOptions;->mIsReturning:Z

    #@14
    .line 1084
    iput-object v3, p0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    #@16
    .line 1085
    iput v2, p0, Landroid/app/ActivityOptions;->mResultCode:I

    #@18
    .line 1086
    iput v2, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    #@1a
    .line 1087
    iget v1, p1, Landroid/app/ActivityOptions;->mAnimationType:I

    #@1c
    iput v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@1e
    .line 1088
    iget v1, p1, Landroid/app/ActivityOptions;->mAnimationType:I

    #@20
    packed-switch v1, :pswitch_data_0

    #@23
    .line 1145
    :goto_0
    :pswitch_0
    iget-object v1, p1, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    #@25
    iput-object v1, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    #@27
    .line 1146
    iget-object v1, p1, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    #@29
    iput-object v1, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    #@2b
    .line 1076
    return-void

    #@2c
    .line 1090
    :pswitch_1
    iget v1, p1, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    #@2e
    iput v1, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    #@30
    .line 1091
    iget v1, p1, Landroid/app/ActivityOptions;->mCustomExitResId:I

    #@32
    iput v1, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    #@34
    .line 1092
    iput-object v3, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    #@36
    .line 1093
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@38
    if-eqz v1, :cond_1

    #@3a
    .line 1095
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@3c
    const/4 v2, 0x0

    #@3d
    invoke-interface {v1, v2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    #@40
    .line 1099
    :cond_1
    :goto_1
    iget-object v1, p1, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@42
    iput-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@44
    goto :goto_0

    #@45
    .line 1102
    :pswitch_2
    iget v1, p1, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    #@47
    iput v1, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    #@49
    goto :goto_0

    #@4a
    .line 1105
    :pswitch_3
    iget v1, p1, Landroid/app/ActivityOptions;->mStartX:I

    #@4c
    iput v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    #@4e
    .line 1106
    iget v1, p1, Landroid/app/ActivityOptions;->mStartY:I

    #@50
    iput v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    #@52
    .line 1107
    iget v1, p1, Landroid/app/ActivityOptions;->mWidth:I

    #@54
    iput v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    #@56
    .line 1108
    iget v1, p1, Landroid/app/ActivityOptions;->mHeight:I

    #@58
    iput v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    #@5a
    .line 1109
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@5c
    if-eqz v1, :cond_2

    #@5e
    .line 1111
    :try_start_1
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@60
    const/4 v2, 0x0

    #@61
    invoke-interface {v1, v2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@64
    .line 1115
    :cond_2
    :goto_2
    iput-object v3, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@66
    goto :goto_0

    #@67
    .line 1121
    :pswitch_4
    iget-object v1, p1, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    #@69
    iput-object v1, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    #@6b
    .line 1122
    iget v1, p1, Landroid/app/ActivityOptions;->mStartX:I

    #@6d
    iput v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    #@6f
    .line 1123
    iget v1, p1, Landroid/app/ActivityOptions;->mStartY:I

    #@71
    iput v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    #@73
    .line 1124
    iget v1, p1, Landroid/app/ActivityOptions;->mWidth:I

    #@75
    iput v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    #@77
    .line 1125
    iget v1, p1, Landroid/app/ActivityOptions;->mHeight:I

    #@79
    iput v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    #@7b
    .line 1126
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@7d
    if-eqz v1, :cond_3

    #@7f
    .line 1128
    :try_start_2
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@81
    const/4 v2, 0x0

    #@82
    invoke-interface {v1, v2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@85
    .line 1132
    :cond_3
    :goto_3
    iget-object v1, p1, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@87
    iput-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@89
    goto :goto_0

    #@8a
    .line 1135
    :pswitch_5
    iget-object v1, p1, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    #@8c
    iput-object v1, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    #@8e
    .line 1136
    iget-object v1, p1, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    #@90
    iput-object v1, p0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    #@92
    .line 1137
    iget-boolean v1, p1, Landroid/app/ActivityOptions;->mIsReturning:Z

    #@94
    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mIsReturning:Z

    #@96
    .line 1138
    iput-object v3, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    #@98
    .line 1139
    iput-object v3, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@9a
    .line 1140
    iget-object v1, p1, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    #@9c
    iput-object v1, p0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    #@9e
    .line 1141
    iget v1, p1, Landroid/app/ActivityOptions;->mResultCode:I

    #@a0
    iput v1, p0, Landroid/app/ActivityOptions;->mResultCode:I

    #@a2
    .line 1142
    iget v1, p1, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    #@a4
    iput v1, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    #@a6
    goto/16 :goto_0

    #@a8
    .line 1129
    :catch_0
    move-exception v0

    #@a9
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_3

    #@aa
    .line 1112
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    #@ab
    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_2

    #@ac
    .line 1096
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v0

    #@ad
    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1

    #@ae
    .line 1088
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

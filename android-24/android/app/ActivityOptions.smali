.class public Landroid/app/ActivityOptions;
.super Ljava/lang/Object;
.source "ActivityOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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
    .line 724
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 221
    iput v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@7
    .line 239
    iput v0, p0, Landroid/app/ActivityOptions;->mLaunchStackId:I

    #@9
    .line 240
    iput v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    #@b
    .line 241
    iput v1, p0, Landroid/app/ActivityOptions;->mDockCreateMode:I

    #@d
    .line 724
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
    .line 728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 221
    iput v4, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@7
    .line 239
    iput v5, p0, Landroid/app/ActivityOptions;->mLaunchStackId:I

    #@9
    .line 240
    iput v5, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    #@b
    .line 241
    iput v4, p0, Landroid/app/ActivityOptions;->mDockCreateMode:I

    #@d
    .line 731
    const/4 v3, 0x1

    #@e
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->setDefusable(Z)V

    #@11
    .line 733
    const-string/jumbo v3, "android:activity.packageName"

    #@14
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    iput-object v3, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    #@1a
    .line 735
    :try_start_0
    const-string/jumbo v3, "android:activity.usageTimeReport"

    #@1d
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@20
    move-result-object v3

    #@21
    check-cast v3, Landroid/app/PendingIntent;

    #@23
    iput-object v3, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 739
    :goto_0
    const-string/jumbo v3, "android:activity.launchBounds"

    #@28
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@2b
    move-result-object v3

    #@2c
    check-cast v3, Landroid/graphics/Rect;

    #@2e
    iput-object v3, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    #@30
    .line 740
    const-string/jumbo v3, "android:activity.animType"

    #@33
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@36
    move-result v3

    #@37
    iput v3, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@39
    .line 741
    iget v3, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@3b
    packed-switch v3, :pswitch_data_0

    #@3e
    .line 783
    :goto_1
    :pswitch_0
    const-string/jumbo v3, "android.activity.launchStackId"

    #@41
    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@44
    move-result v3

    #@45
    iput v3, p0, Landroid/app/ActivityOptions;->mLaunchStackId:I

    #@47
    .line 784
    const-string/jumbo v3, "android.activity.launchTaskId"

    #@4a
    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@4d
    move-result v3

    #@4e
    iput v3, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    #@50
    .line 785
    const-string/jumbo v3, "android.activity.taskOverlay"

    #@53
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@56
    move-result v3

    #@57
    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mTaskOverlay:Z

    #@59
    .line 786
    const-string/jumbo v3, "android:activity.dockCreateMode"

    #@5c
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@5f
    move-result v3

    #@60
    iput v3, p0, Landroid/app/ActivityOptions;->mDockCreateMode:I

    #@62
    .line 787
    const-string/jumbo v3, "android:activity.animSpecs"

    #@65
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@68
    move-result v3

    #@69
    if-eqz v3, :cond_0

    #@6b
    .line 788
    const-string/jumbo v3, "android:activity.animSpecs"

    #@6e
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    #@71
    move-result-object v2

    #@72
    .line 789
    .local v2, "specs":[Landroid/os/Parcelable;
    array-length v3, v2

    #@73
    new-array v3, v3, [Landroid/view/AppTransitionAnimationSpec;

    #@75
    iput-object v3, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    #@77
    .line 790
    array-length v3, v2

    #@78
    add-int/lit8 v1, v3, -0x1

    #@7a
    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_0

    #@7c
    .line 791
    iget-object v4, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    #@7e
    aget-object v3, v2, v1

    #@80
    check-cast v3, Landroid/view/AppTransitionAnimationSpec;

    #@82
    aput-object v3, v4, v1

    #@84
    .line 790
    add-int/lit8 v1, v1, -0x1

    #@86
    goto :goto_2

    #@87
    .line 736
    .end local v1    # "i":I
    .end local v2    # "specs":[Landroid/os/Parcelable;
    :catch_0
    move-exception v0

    #@88
    .line 737
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "ActivityOptions"

    #@8b
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    #@8e
    goto :goto_0

    #@8f
    .line 743
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :pswitch_1
    const-string/jumbo v3, "android:activity.animEnterRes"

    #@92
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@95
    move-result v3

    #@96
    iput v3, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    #@98
    .line 744
    const-string/jumbo v3, "android:activity.animExitRes"

    #@9b
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@9e
    move-result v3

    #@9f
    iput v3, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    #@a1
    .line 746
    const-string/jumbo v3, "android:activity.animStartListener"

    #@a4
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    #@a7
    move-result-object v3

    #@a8
    .line 745
    invoke-static {v3}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    #@ab
    move-result-object v3

    #@ac
    iput-object v3, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@ae
    goto :goto_1

    #@af
    .line 750
    :pswitch_2
    const-string/jumbo v3, "android:activity.animInPlaceRes"

    #@b2
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@b5
    move-result v3

    #@b6
    iput v3, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    #@b8
    goto :goto_1

    #@b9
    .line 755
    :pswitch_3
    const-string/jumbo v3, "android:activity.animStartX"

    #@bc
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@bf
    move-result v3

    #@c0
    iput v3, p0, Landroid/app/ActivityOptions;->mStartX:I

    #@c2
    .line 756
    const-string/jumbo v3, "android:activity.animStartY"

    #@c5
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@c8
    move-result v3

    #@c9
    iput v3, p0, Landroid/app/ActivityOptions;->mStartY:I

    #@cb
    .line 757
    const-string/jumbo v3, "android:activity.animWidth"

    #@ce
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@d1
    move-result v3

    #@d2
    iput v3, p0, Landroid/app/ActivityOptions;->mWidth:I

    #@d4
    .line 758
    const-string/jumbo v3, "android:activity.animHeight"

    #@d7
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@da
    move-result v3

    #@db
    iput v3, p0, Landroid/app/ActivityOptions;->mHeight:I

    #@dd
    goto/16 :goto_1

    #@df
    .line 765
    :pswitch_4
    const-string/jumbo v3, "android:activity.animThumbnail"

    #@e2
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@e5
    move-result-object v3

    #@e6
    check-cast v3, Landroid/graphics/Bitmap;

    #@e8
    iput-object v3, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    #@ea
    .line 766
    const-string/jumbo v3, "android:activity.animStartX"

    #@ed
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@f0
    move-result v3

    #@f1
    iput v3, p0, Landroid/app/ActivityOptions;->mStartX:I

    #@f3
    .line 767
    const-string/jumbo v3, "android:activity.animStartY"

    #@f6
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@f9
    move-result v3

    #@fa
    iput v3, p0, Landroid/app/ActivityOptions;->mStartY:I

    #@fc
    .line 768
    const-string/jumbo v3, "android:activity.animWidth"

    #@ff
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@102
    move-result v3

    #@103
    iput v3, p0, Landroid/app/ActivityOptions;->mWidth:I

    #@105
    .line 769
    const-string/jumbo v3, "android:activity.animHeight"

    #@108
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@10b
    move-result v3

    #@10c
    iput v3, p0, Landroid/app/ActivityOptions;->mHeight:I

    #@10e
    .line 771
    const-string/jumbo v3, "android:activity.animStartListener"

    #@111
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    #@114
    move-result-object v3

    #@115
    .line 770
    invoke-static {v3}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    #@118
    move-result-object v3

    #@119
    iput-object v3, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@11b
    goto/16 :goto_1

    #@11d
    .line 775
    :pswitch_5
    const-string/jumbo v3, "android:activity.transitionCompleteListener"

    #@120
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@123
    move-result-object v3

    #@124
    check-cast v3, Landroid/os/ResultReceiver;

    #@126
    iput-object v3, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    #@128
    .line 776
    const-string/jumbo v3, "android:activity.transitionIsReturning"

    #@12b
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@12e
    move-result v3

    #@12f
    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mIsReturning:Z

    #@131
    .line 777
    const-string/jumbo v3, "android:activity.sharedElementNames"

    #@134
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    #@137
    move-result-object v3

    #@138
    iput-object v3, p0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    #@13a
    .line 778
    const-string/jumbo v3, "android:activity.resultData"

    #@13d
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@140
    move-result-object v3

    #@141
    check-cast v3, Landroid/content/Intent;

    #@143
    iput-object v3, p0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    #@145
    .line 779
    const-string/jumbo v3, "android:activity.resultCode"

    #@148
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@14b
    move-result v3

    #@14c
    iput v3, p0, Landroid/app/ActivityOptions;->mResultCode:I

    #@14e
    .line 780
    const-string/jumbo v3, "android:activity.exitCoordinatorIndex"

    #@151
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@154
    move-result v3

    #@155
    iput v3, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    #@157
    goto/16 :goto_1

    #@159
    .line 794
    :cond_0
    const-string/jumbo v3, "android:activity.animationFinishedListener"

    #@15c
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@15f
    move-result v3

    #@160
    if-eqz v3, :cond_1

    #@162
    .line 796
    const-string/jumbo v3, "android:activity.animationFinishedListener"

    #@165
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    #@168
    move-result-object v3

    #@169
    .line 795
    invoke-static {v3}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    #@16c
    move-result-object v3

    #@16d
    iput-object v3, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    #@16f
    .line 728
    :cond_1
    return-void

    #@170
    .line 741
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
    .line 932
    if-eqz p0, :cond_0

    #@2
    .line 933
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->abort()V

    #@5
    .line 931
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
    .line 927
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
    .line 567
    new-instance v0, Landroid/app/ActivityOptions;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    #@5
    .line 568
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
    .line 569
    if-eqz p8, :cond_0

    #@11
    const/16 v2, 0x8

    #@13
    :goto_0
    iput v2, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@15
    .line 571
    iput-object p1, v0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    #@17
    .line 572
    const/4 v2, 0x2

    #@18
    new-array v1, v2, [I

    #@1a
    .line 573
    .local v1, "pts":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    #@1d
    .line 574
    const/4 v2, 0x0

    #@1e
    aget v2, v1, v2

    #@20
    add-int/2addr v2, p2

    #@21
    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    #@23
    .line 575
    const/4 v2, 0x1

    #@24
    aget v2, v1, v2

    #@26
    add-int/2addr v2, p3

    #@27
    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    #@29
    .line 576
    iput p4, v0, Landroid/app/ActivityOptions;->mWidth:I

    #@2b
    .line 577
    iput p5, v0, Landroid/app/ActivityOptions;->mHeight:I

    #@2d
    .line 578
    invoke-direct {v0, p6, p7}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    #@30
    .line 579
    return-object v0

    #@31
    .line 570
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
    .line 715
    new-instance v0, Landroid/app/ActivityOptions;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    #@5
    .line 716
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
    .line 417
    new-instance v0, Landroid/app/ActivityOptions;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    #@5
    .line 418
    .local v0, "opts":Landroid/app/ActivityOptions;
    const/16 v2, 0xb

    #@7
    iput v2, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@9
    .line 419
    const/4 v2, 0x2

    #@a
    new-array v1, v2, [I

    #@c
    .line 420
    .local v1, "pts":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    #@f
    .line 421
    const/4 v2, 0x0

    #@10
    aget v2, v1, v2

    #@12
    add-int/2addr v2, p1

    #@13
    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    #@15
    .line 422
    const/4 v2, 0x1

    #@16
    aget v2, v1, v2

    #@18
    add-int/2addr v2, p2

    #@19
    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    #@1b
    .line 423
    iput p3, v0, Landroid/app/ActivityOptions;->mWidth:I

    #@1d
    .line 424
    iput p4, v0, Landroid/app/ActivityOptions;->mHeight:I

    #@1f
    .line 425
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
    .line 260
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
    .line 284
    new-instance v0, Landroid/app/ActivityOptions;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    #@5
    .line 285
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    #@b
    .line 286
    const/4 v1, 0x1

    #@c
    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@e
    .line 287
    iput p1, v0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    #@10
    .line 288
    iput p2, v0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    #@12
    .line 289
    invoke-direct {v0, p3, p4}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    #@15
    .line 290
    return-object v0
.end method

.method public static makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "animId"    # I

    #@0
    .prologue
    .line 306
    if-nez p1, :cond_0

    #@2
    .line 307
    new-instance v1, Ljava/lang/RuntimeException;

    #@4
    const-string/jumbo v2, "You must specify a valid animation."

    #@7
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 310
    :cond_0
    new-instance v0, Landroid/app/ActivityOptions;

    #@d
    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    #@10
    .line 311
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    #@16
    .line 312
    const/16 v1, 0xa

    #@18
    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@1a
    .line 313
    iput p1, v0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    #@1c
    .line 314
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
    .line 389
    new-instance v0, Landroid/app/ActivityOptions;

    #@3
    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    #@6
    .line 390
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
    .line 391
    iput v3, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@12
    .line 392
    new-array v1, v3, [I

    #@14
    .line 393
    .local v1, "pts":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    #@17
    .line 394
    const/4 v2, 0x0

    #@18
    aget v2, v1, v2

    #@1a
    add-int/2addr v2, p1

    #@1b
    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    #@1d
    .line 395
    const/4 v2, 0x1

    #@1e
    aget v2, v1, v2

    #@20
    add-int/2addr v2, p2

    #@21
    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    #@23
    .line 396
    iput p3, v0, Landroid/app/ActivityOptions;->mWidth:I

    #@25
    .line 397
    iput p4, v0, Landroid/app/ActivityOptions;->mHeight:I

    #@27
    .line 398
    return-object v0
.end method

.method public static makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/app/ExitTransitionCoordinator;Ljava/util/ArrayList;ILandroid/content/Intent;)Landroid/app/ActivityOptions;
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
    .line 682
    .local p2, "sharedElementNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/app/ActivityOptions;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    #@5
    .line 683
    .local v0, "opts":Landroid/app/ActivityOptions;
    const/4 v1, 0x5

    #@6
    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@8
    .line 684
    iput-object p2, v0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    #@a
    .line 685
    iput-object p1, v0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    #@c
    .line 686
    const/4 v1, 0x1

    #@d
    iput-boolean v1, v0, Landroid/app/ActivityOptions;->mIsReturning:Z

    #@f
    .line 687
    iput p3, v0, Landroid/app/ActivityOptions;->mResultCode:I

    #@11
    .line 688
    iput-object p4, v0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    #@13
    .line 690
    iget-object v1, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    #@15
    invoke-virtual {v1, p1}, Landroid/app/ActivityTransitionState;->addExitTransitionCoordinator(Landroid/app/ExitTransitionCoordinator;)I

    #@18
    move-result v1

    #@19
    .line 689
    iput v1, v0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    #@1b
    .line 691
    return-object v0
.end method

.method public static makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "sharedElement"    # Landroid/view/View;
    .param p2, "sharedElementName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 617
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
    .locals 11
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
    .local p1, "sharedElements":[Landroid/util/Pair;, "[Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    const/4 v5, 0x0

    #@1
    .line 642
    new-instance v7, Landroid/app/ActivityOptions;

    #@3
    invoke-direct {v7}, Landroid/app/ActivityOptions;-><init>()V

    #@6
    .line 643
    .local v7, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@9
    move-result-object v1

    #@a
    const/16 v3, 0xd

    #@c
    invoke-virtual {v1, v3}, Landroid/view/Window;->hasFeature(I)Z

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_0

    #@12
    .line 644
    const/4 v1, 0x6

    #@13
    iput v1, v7, Landroid/app/ActivityOptions;->mAnimationType:I

    #@15
    .line 645
    return-object v7

    #@16
    .line 647
    :cond_0
    const/4 v1, 0x5

    #@17
    iput v1, v7, Landroid/app/ActivityOptions;->mAnimationType:I

    #@19
    .line 649
    new-instance v2, Ljava/util/ArrayList;

    #@1b
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@1e
    .line 650
    .local v2, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    #@20
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@23
    .line 652
    .local v4, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p1, :cond_3

    #@25
    .line 653
    const/4 v6, 0x0

    #@26
    .local v6, "i":I
    :goto_0
    array-length v1, p1

    #@27
    if-ge v6, v1, :cond_3

    #@29
    .line 654
    aget-object v8, p1, v6

    #@2b
    .line 655
    .local v8, "sharedElement":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    iget-object v9, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@2d
    check-cast v9, Ljava/lang/String;

    #@2f
    .line 656
    .local v9, "sharedElementName":Ljava/lang/String;
    if-nez v9, :cond_1

    #@31
    .line 657
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@33
    const-string/jumbo v3, "Shared element name must not be null"

    #@36
    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@39
    throw v1

    #@3a
    .line 659
    :cond_1
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3d
    .line 660
    iget-object v10, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@3f
    check-cast v10, Landroid/view/View;

    #@41
    .line 661
    .local v10, "view":Landroid/view/View;
    if-nez v10, :cond_2

    #@43
    .line 662
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@45
    const-string/jumbo v3, "Shared element must not be null"

    #@48
    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v1

    #@4c
    .line 664
    :cond_2
    iget-object v1, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@4e
    check-cast v1, Landroid/view/View;

    #@50
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@53
    .line 653
    add-int/lit8 v6, v6, 0x1

    #@55
    goto :goto_0

    #@56
    .line 668
    .end local v6    # "i":I
    .end local v8    # "sharedElement":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    .end local v9    # "sharedElementName":Ljava/lang/String;
    .end local v10    # "view":Landroid/view/View;
    :cond_3
    new-instance v0, Landroid/app/ExitTransitionCoordinator;

    #@58
    move-object v1, p0

    #@59
    move-object v3, v2

    #@5a
    invoke-direct/range {v0 .. v5}, Landroid/app/ExitTransitionCoordinator;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    #@5d
    .line 670
    .local v0, "exit":Landroid/app/ExitTransitionCoordinator;
    iput-object v0, v7, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    #@5f
    .line 671
    iput-object v2, v7, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    #@61
    .line 672
    iput-boolean v5, v7, Landroid/app/ActivityOptions;->mIsReturning:Z

    #@63
    .line 674
    iget-object v1, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    #@65
    invoke-virtual {v1, v0}, Landroid/app/ActivityTransitionState;->addExitTransitionCoordinator(Landroid/app/ExitTransitionCoordinator;)I

    #@68
    move-result v1

    #@69
    .line 673
    iput v1, v7, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    #@6b
    .line 675
    return-object v7
.end method

.method public static makeTaskLaunchBehind()Landroid/app/ActivityOptions;
    .locals 2

    #@0
    .prologue
    .line 705
    new-instance v0, Landroid/app/ActivityOptions;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    #@5
    .line 706
    .local v0, "opts":Landroid/app/ActivityOptions;
    const/4 v1, 0x7

    #@6
    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@8
    .line 707
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
    .line 500
    new-instance v0, Landroid/app/ActivityOptions;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    #@5
    .line 501
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
    .line 502
    if-eqz p5, :cond_0

    #@11
    const/4 v2, 0x3

    #@12
    :goto_0
    iput v2, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@14
    .line 503
    iput-object p1, v0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    #@16
    .line 504
    const/4 v2, 0x2

    #@17
    new-array v1, v2, [I

    #@19
    .line 505
    .local v1, "pts":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    #@1c
    .line 506
    const/4 v2, 0x0

    #@1d
    aget v2, v1, v2

    #@1f
    add-int/2addr v2, p2

    #@20
    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    #@22
    .line 507
    const/4 v2, 0x1

    #@23
    aget v2, v1, v2

    #@25
    add-int/2addr v2, p3

    #@26
    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    #@28
    .line 508
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    #@2b
    move-result-object v2

    #@2c
    invoke-direct {v0, v2, p4}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    #@2f
    .line 509
    return-object v0

    #@30
    .line 502
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
    .line 561
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
    .line 560
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
    .line 587
    new-instance v0, Landroid/app/ActivityOptions;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    #@5
    .line 588
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
    .line 589
    const/16 v1, 0x9

    #@11
    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@13
    .line 590
    iput-object p1, v0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    #@15
    .line 591
    invoke-direct {v0, p2, p3}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    #@18
    .line 592
    invoke-direct {v0, p2, p4}, Landroid/app/ActivityOptions;->setOnAnimationFinishedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)V

    #@1b
    .line 593
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
    .line 535
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
    .line 534
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
    .line 494
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
    .line 449
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
    .line 472
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
    .line 344
    if-eqz p2, :cond_0

    #@2
    .line 345
    new-instance v0, Landroid/app/ActivityOptions$2;

    #@4
    invoke-direct {v0, p0, p1, p2}, Landroid/app/ActivityOptions$2;-><init>(Landroid/app/ActivityOptions;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)V

    #@7
    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    #@9
    .line 343
    :cond_0
    return-void
.end method

.method private setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    #@0
    .prologue
    .line 319
    if-eqz p2, :cond_0

    #@2
    .line 320
    new-instance v0, Landroid/app/ActivityOptions$1;

    #@4
    invoke-direct {v0, p0, p1, p2}, Landroid/app/ActivityOptions$1;-><init>(Landroid/app/ActivityOptions;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    #@7
    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@9
    .line 318
    :cond_0
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 3

    #@0
    .prologue
    .line 890
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 892
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@6
    const/4 v2, 0x0

    #@7
    invoke-interface {v1, v2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 889
    :cond_0
    :goto_0
    return-void

    #@b
    .line 893
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
    .line 1178
    iget v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@2
    const/4 v2, 0x5

    #@3
    if-ne v1, v2, :cond_0

    #@5
    .line 1179
    new-instance v0, Landroid/app/ActivityOptions;

    #@7
    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    #@a
    .line 1180
    .local v0, "result":Landroid/app/ActivityOptions;
    invoke-virtual {v0, p0}, Landroid/app/ActivityOptions;->update(Landroid/app/ActivityOptions;)V

    #@d
    .line 1181
    return-object v0

    #@e
    .line 1184
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
    .line 923
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    #@2
    return-object v0
.end method

.method public getAnimationFinishedListener()Landroid/os/IRemoteCallback;
    .locals 1

    #@0
    .prologue
    .line 882
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    #@2
    return-object v0
.end method

.method public getAnimationType()I
    .locals 1

    #@0
    .prologue
    .line 832
    iget v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@2
    return v0
.end method

.method public getCustomEnterResId()I
    .locals 1

    #@0
    .prologue
    .line 837
    iget v0, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    #@2
    return v0
.end method

.method public getCustomExitResId()I
    .locals 1

    #@0
    .prologue
    .line 842
    iget v0, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    #@2
    return v0
.end method

.method public getCustomInPlaceResId()I
    .locals 1

    #@0
    .prologue
    .line 847
    iget v0, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    #@2
    return v0
.end method

.method public getDockCreateMode()I
    .locals 1

    #@0
    .prologue
    .line 982
    iget v0, p0, Landroid/app/ActivityOptions;->mDockCreateMode:I

    #@2
    return v0
.end method

.method public getExitCoordinatorKey()I
    .locals 1

    #@0
    .prologue
    .line 886
    iget v0, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    #@2
    return v0
.end method

.method public getHeight()I
    .locals 1

    #@0
    .prologue
    .line 872
    iget v0, p0, Landroid/app/ActivityOptions;->mHeight:I

    #@2
    return v0
.end method

.method public getLaunchBounds()Landroid/graphics/Rect;
    .locals 1

    #@0
    .prologue
    .line 827
    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    #@2
    return-object v0
.end method

.method public getLaunchStackId()I
    .locals 1

    #@0
    .prologue
    .line 939
    iget v0, p0, Landroid/app/ActivityOptions;->mLaunchStackId:I

    #@2
    return v0
.end method

.method public getLaunchTaskBehind()Z
    .locals 2

    #@0
    .prologue
    .line 721
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
    .line 960
    iget v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    #@2
    return v0
.end method

.method public getOnAnimationStartListener()Landroid/os/IRemoteCallback;
    .locals 1

    #@0
    .prologue
    .line 877
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@2
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 817
    iget-object v0, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    #@0
    .prologue
    .line 912
    iget v0, p0, Landroid/app/ActivityOptions;->mResultCode:I

    #@2
    return v0
.end method

.method public getResultData()Landroid/content/Intent;
    .locals 1

    #@0
    .prologue
    .line 915
    iget-object v0, p0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    #@2
    return-object v0
.end method

.method public getResultReceiver()Landroid/os/ResultReceiver;
    .locals 1

    #@0
    .prologue
    .line 909
    iget-object v0, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    #@2
    return-object v0
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
    .line 905
    iget-object v0, p0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public getStartX()I
    .locals 1

    #@0
    .prologue
    .line 857
    iget v0, p0, Landroid/app/ActivityOptions;->mStartX:I

    #@2
    return v0
.end method

.method public getStartY()I
    .locals 1

    #@0
    .prologue
    .line 862
    iget v0, p0, Landroid/app/ActivityOptions;->mStartY:I

    #@2
    return v0
.end method

.method public getTaskOverlay()Z
    .locals 1

    #@0
    .prologue
    .line 977
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mTaskOverlay:Z

    #@2
    return v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    #@0
    .prologue
    .line 852
    iget-object v0, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    #@2
    return-object v0
.end method

.method public getUsageTimeReport()Landroid/app/PendingIntent;
    .locals 1

    #@0
    .prologue
    .line 919
    iget-object v0, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    #@2
    return-object v0
.end method

.method public getWidth()I
    .locals 1

    #@0
    .prologue
    .line 867
    iget v0, p0, Landroid/app/ActivityOptions;->mWidth:I

    #@2
    return v0
.end method

.method public isReturning()Z
    .locals 1

    #@0
    .prologue
    .line 900
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mIsReturning:Z

    #@2
    return v0
.end method

.method public requestUsageTimeReport(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "receiver"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 1170
    iput-object p1, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    #@2
    .line 1169
    return-void
.end method

.method public setDockCreateMode(I)V
    .locals 0
    .param p1, "dockCreateMode"    # I

    #@0
    .prologue
    .line 987
    iput p1, p0, Landroid/app/ActivityOptions;->mDockCreateMode:I

    #@2
    .line 986
    return-void
.end method

.method public setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;
    .locals 1
    .param p1, "screenSpacePixelRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 811
    if-eqz p1, :cond_0

    #@3
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@8
    :cond_0
    iput-object v0, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    #@a
    .line 812
    return-object p0
.end method

.method public setLaunchStackId(I)V
    .locals 0
    .param p1, "launchStackId"    # I

    #@0
    .prologue
    .line 945
    iput p1, p0, Landroid/app/ActivityOptions;->mLaunchStackId:I

    #@2
    .line 944
    return-void
.end method

.method public setLaunchTaskId(I)V
    .locals 0
    .param p1, "taskId"    # I

    #@0
    .prologue
    .line 953
    iput p1, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    #@2
    .line 952
    return-void
.end method

.method public setTaskOverlay(Z)V
    .locals 0
    .param p1, "taskOverlay"    # Z

    #@0
    .prologue
    .line 970
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mTaskOverlay:Z

    #@2
    .line 969
    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1077
    iget v2, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@3
    const/4 v3, 0x6

    #@4
    if-ne v2, v3, :cond_0

    #@6
    .line 1078
    return-object v1

    #@7
    .line 1080
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    #@9
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@c
    .line 1081
    .local v0, "b":Landroid/os/Bundle;
    iget-object v2, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    #@e
    if-eqz v2, :cond_1

    #@10
    .line 1082
    const-string/jumbo v2, "android:activity.packageName"

    #@13
    iget-object v3, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    #@15
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@18
    .line 1084
    :cond_1
    iget-object v2, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    #@1a
    if-eqz v2, :cond_2

    #@1c
    .line 1085
    const-string/jumbo v2, "android:activity.launchBounds"

    #@1f
    iget-object v3, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    #@21
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@24
    .line 1087
    :cond_2
    const-string/jumbo v2, "android:activity.animType"

    #@27
    iget v3, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@29
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@2c
    .line 1088
    iget-object v2, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    #@2e
    if-eqz v2, :cond_3

    #@30
    .line 1089
    const-string/jumbo v2, "android:activity.usageTimeReport"

    #@33
    iget-object v3, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    #@35
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@38
    .line 1091
    :cond_3
    iget v2, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@3a
    packed-switch v2, :pswitch_data_0

    #@3d
    .line 1131
    :goto_0
    :pswitch_0
    const-string/jumbo v1, "android.activity.launchStackId"

    #@40
    iget v2, p0, Landroid/app/ActivityOptions;->mLaunchStackId:I

    #@42
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@45
    .line 1132
    const-string/jumbo v1, "android.activity.launchTaskId"

    #@48
    iget v2, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    #@4a
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@4d
    .line 1133
    const-string/jumbo v1, "android.activity.taskOverlay"

    #@50
    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mTaskOverlay:Z

    #@52
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@55
    .line 1134
    const-string/jumbo v1, "android:activity.dockCreateMode"

    #@58
    iget v2, p0, Landroid/app/ActivityOptions;->mDockCreateMode:I

    #@5a
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@5d
    .line 1135
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    #@5f
    if-eqz v1, :cond_4

    #@61
    .line 1136
    const-string/jumbo v1, "android:activity.animSpecs"

    #@64
    iget-object v2, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    #@66
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    #@69
    .line 1138
    :cond_4
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    #@6b
    if-eqz v1, :cond_5

    #@6d
    .line 1139
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
    .line 1142
    :cond_5
    return-object v0

    #@7a
    .line 1093
    :pswitch_1
    const-string/jumbo v2, "android:activity.animEnterRes"

    #@7d
    iget v3, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    #@7f
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@82
    .line 1094
    const-string/jumbo v2, "android:activity.animExitRes"

    #@85
    iget v3, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    #@87
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@8a
    .line 1095
    const-string/jumbo v2, "android:activity.animStartListener"

    #@8d
    iget-object v3, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@8f
    if-eqz v3, :cond_6

    #@91
    .line 1096
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@93
    invoke-interface {v1}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    #@96
    move-result-object v1

    #@97
    .line 1095
    :cond_6
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    #@9a
    goto :goto_0

    #@9b
    .line 1099
    :pswitch_2
    const-string/jumbo v1, "android:activity.animInPlaceRes"

    #@9e
    iget v2, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    #@a0
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@a3
    goto :goto_0

    #@a4
    .line 1103
    :pswitch_3
    const-string/jumbo v1, "android:activity.animStartX"

    #@a7
    iget v2, p0, Landroid/app/ActivityOptions;->mStartX:I

    #@a9
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@ac
    .line 1104
    const-string/jumbo v1, "android:activity.animStartY"

    #@af
    iget v2, p0, Landroid/app/ActivityOptions;->mStartY:I

    #@b1
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@b4
    .line 1105
    const-string/jumbo v1, "android:activity.animWidth"

    #@b7
    iget v2, p0, Landroid/app/ActivityOptions;->mWidth:I

    #@b9
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@bc
    .line 1106
    const-string/jumbo v1, "android:activity.animHeight"

    #@bf
    iget v2, p0, Landroid/app/ActivityOptions;->mHeight:I

    #@c1
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@c4
    goto/16 :goto_0

    #@c6
    .line 1112
    :pswitch_4
    const-string/jumbo v2, "android:activity.animThumbnail"

    #@c9
    iget-object v3, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    #@cb
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@ce
    .line 1113
    const-string/jumbo v2, "android:activity.animStartX"

    #@d1
    iget v3, p0, Landroid/app/ActivityOptions;->mStartX:I

    #@d3
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@d6
    .line 1114
    const-string/jumbo v2, "android:activity.animStartY"

    #@d9
    iget v3, p0, Landroid/app/ActivityOptions;->mStartY:I

    #@db
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@de
    .line 1115
    const-string/jumbo v2, "android:activity.animWidth"

    #@e1
    iget v3, p0, Landroid/app/ActivityOptions;->mWidth:I

    #@e3
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@e6
    .line 1116
    const-string/jumbo v2, "android:activity.animHeight"

    #@e9
    iget v3, p0, Landroid/app/ActivityOptions;->mHeight:I

    #@eb
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@ee
    .line 1117
    const-string/jumbo v2, "android:activity.animStartListener"

    #@f1
    iget-object v3, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@f3
    if-eqz v3, :cond_7

    #@f5
    .line 1118
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@f7
    invoke-interface {v1}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    #@fa
    move-result-object v1

    #@fb
    .line 1117
    :cond_7
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    #@fe
    goto/16 :goto_0

    #@100
    .line 1121
    :pswitch_5
    iget-object v1, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    #@102
    if-eqz v1, :cond_8

    #@104
    .line 1122
    const-string/jumbo v1, "android:activity.transitionCompleteListener"

    #@107
    iget-object v2, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    #@109
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@10c
    .line 1124
    :cond_8
    const-string/jumbo v1, "android:activity.transitionIsReturning"

    #@10f
    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mIsReturning:Z

    #@111
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@114
    .line 1125
    const-string/jumbo v1, "android:activity.sharedElementNames"

    #@117
    iget-object v2, p0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    #@119
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@11c
    .line 1126
    const-string/jumbo v1, "android:activity.resultData"

    #@11f
    iget-object v2, p0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    #@121
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@124
    .line 1127
    const-string/jumbo v1, "android:activity.resultCode"

    #@127
    iget v2, p0, Landroid/app/ActivityOptions;->mResultCode:I

    #@129
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@12c
    .line 1128
    const-string/jumbo v1, "android:activity.exitCoordinatorIndex"

    #@12f
    iget v2, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    #@131
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@134
    goto/16 :goto_0

    #@136
    .line 1091
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
    .line 1190
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
    .line 1191
    const-string/jumbo v1, ", mAnimationType="

    #@24
    .line 1190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    .line 1191
    iget v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@2a
    .line 1190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    .line 1191
    const-string/jumbo v1, ", mStartX="

    #@31
    .line 1190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    .line 1191
    iget v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    #@37
    .line 1190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    .line 1191
    const-string/jumbo v1, ", mStartY="

    #@3e
    .line 1190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v0

    #@42
    .line 1192
    iget v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    #@44
    .line 1190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v0

    #@48
    .line 1192
    const-string/jumbo v1, ", mWidth="

    #@4b
    .line 1190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v0

    #@4f
    .line 1192
    iget v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    #@51
    .line 1190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@54
    move-result-object v0

    #@55
    .line 1192
    const-string/jumbo v1, ", mHeight="

    #@58
    .line 1190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v0

    #@5c
    .line 1192
    iget v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    #@5e
    .line 1190
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
    .line 996
    iget-object v1, p1, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 997
    iget-object v1, p1, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    #@8
    iput-object v1, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    #@a
    .line 999
    :cond_0
    iget-object v1, p1, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    #@c
    iput-object v1, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    #@e
    .line 1000
    iput-object v3, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    #@10
    .line 1001
    iput-object v3, p0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    #@12
    .line 1002
    iput-boolean v2, p0, Landroid/app/ActivityOptions;->mIsReturning:Z

    #@14
    .line 1003
    iput-object v3, p0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    #@16
    .line 1004
    iput v2, p0, Landroid/app/ActivityOptions;->mResultCode:I

    #@18
    .line 1005
    iput v2, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    #@1a
    .line 1006
    iget v1, p1, Landroid/app/ActivityOptions;->mAnimationType:I

    #@1c
    iput v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@1e
    .line 1007
    iget v1, p1, Landroid/app/ActivityOptions;->mAnimationType:I

    #@20
    packed-switch v1, :pswitch_data_0

    #@23
    .line 1064
    :goto_0
    :pswitch_0
    iget-object v1, p1, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    #@25
    iput-object v1, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    #@27
    .line 1065
    iget-object v1, p1, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    #@29
    iput-object v1, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    #@2b
    .line 995
    return-void

    #@2c
    .line 1009
    :pswitch_1
    iget v1, p1, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    #@2e
    iput v1, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    #@30
    .line 1010
    iget v1, p1, Landroid/app/ActivityOptions;->mCustomExitResId:I

    #@32
    iput v1, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    #@34
    .line 1011
    iput-object v3, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    #@36
    .line 1012
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@38
    if-eqz v1, :cond_1

    #@3a
    .line 1014
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@3c
    const/4 v2, 0x0

    #@3d
    invoke-interface {v1, v2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    #@40
    .line 1018
    :cond_1
    :goto_1
    iget-object v1, p1, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@42
    iput-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@44
    goto :goto_0

    #@45
    .line 1021
    :pswitch_2
    iget v1, p1, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    #@47
    iput v1, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    #@49
    goto :goto_0

    #@4a
    .line 1024
    :pswitch_3
    iget v1, p1, Landroid/app/ActivityOptions;->mStartX:I

    #@4c
    iput v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    #@4e
    .line 1025
    iget v1, p1, Landroid/app/ActivityOptions;->mStartY:I

    #@50
    iput v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    #@52
    .line 1026
    iget v1, p1, Landroid/app/ActivityOptions;->mWidth:I

    #@54
    iput v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    #@56
    .line 1027
    iget v1, p1, Landroid/app/ActivityOptions;->mHeight:I

    #@58
    iput v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    #@5a
    .line 1028
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@5c
    if-eqz v1, :cond_2

    #@5e
    .line 1030
    :try_start_1
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@60
    const/4 v2, 0x0

    #@61
    invoke-interface {v1, v2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@64
    .line 1034
    :cond_2
    :goto_2
    iput-object v3, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@66
    goto :goto_0

    #@67
    .line 1040
    :pswitch_4
    iget-object v1, p1, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    #@69
    iput-object v1, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    #@6b
    .line 1041
    iget v1, p1, Landroid/app/ActivityOptions;->mStartX:I

    #@6d
    iput v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    #@6f
    .line 1042
    iget v1, p1, Landroid/app/ActivityOptions;->mStartY:I

    #@71
    iput v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    #@73
    .line 1043
    iget v1, p1, Landroid/app/ActivityOptions;->mWidth:I

    #@75
    iput v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    #@77
    .line 1044
    iget v1, p1, Landroid/app/ActivityOptions;->mHeight:I

    #@79
    iput v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    #@7b
    .line 1045
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@7d
    if-eqz v1, :cond_3

    #@7f
    .line 1047
    :try_start_2
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@81
    const/4 v2, 0x0

    #@82
    invoke-interface {v1, v2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@85
    .line 1051
    :cond_3
    :goto_3
    iget-object v1, p1, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@87
    iput-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@89
    goto :goto_0

    #@8a
    .line 1054
    :pswitch_5
    iget-object v1, p1, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    #@8c
    iput-object v1, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    #@8e
    .line 1055
    iget-object v1, p1, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    #@90
    iput-object v1, p0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    #@92
    .line 1056
    iget-boolean v1, p1, Landroid/app/ActivityOptions;->mIsReturning:Z

    #@94
    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mIsReturning:Z

    #@96
    .line 1057
    iput-object v3, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    #@98
    .line 1058
    iput-object v3, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@9a
    .line 1059
    iget-object v1, p1, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    #@9c
    iput-object v1, p0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    #@9e
    .line 1060
    iget v1, p1, Landroid/app/ActivityOptions;->mResultCode:I

    #@a0
    iput v1, p0, Landroid/app/ActivityOptions;->mResultCode:I

    #@a2
    .line 1061
    iget v1, p1, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    #@a4
    iput v1, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    #@a6
    goto/16 :goto_0

    #@a8
    .line 1048
    :catch_0
    move-exception v0

    #@a9
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_3

    #@aa
    .line 1031
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    #@ab
    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_2

    #@ac
    .line 1015
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v0

    #@ad
    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1

    #@ae
    .line 1007
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

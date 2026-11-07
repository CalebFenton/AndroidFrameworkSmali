.class public Landroid/app/ActivityOptions;
.super Landroid/app/ComponentOptions;
.source "ActivityOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityOptions$OnAnimationStartedListener;,
        Landroid/app/ActivityOptions$OnAnimationFinishedListener;,
        Landroid/app/ActivityOptions$SceneTransitionInfo;,
        Landroid/app/ActivityOptions$SourceInfo;,
        Landroid/app/ActivityOptions$LaunchCookie;,
        Landroid/app/ActivityOptions$BackgroundActivityStartMode;
    }
.end annotation


# static fields
.field public static final greylist-max-o ANIM_CLIP_REVEAL:I = 0xb

.field public static final greylist-max-o ANIM_CUSTOM:I = 0x1

.field public static final greylist-max-o ANIM_CUSTOM_IN_PLACE:I = 0xa

.field public static final greylist-max-o ANIM_DEFAULT:I = 0x6

.field public static final blacklist ANIM_FROM_STYLE:I = 0xe

.field public static final greylist-max-o ANIM_LAUNCH_TASK_BEHIND:I = 0x7

.field public static final greylist-max-o ANIM_NONE:I = 0x0

.field public static final greylist-max-o ANIM_OPEN_CROSS_PROFILE_APPS:I = 0xc

.field public static final greylist-max-o ANIM_REMOTE_ANIMATION:I = 0xd

.field public static final greylist-max-o ANIM_SCALE_UP:I = 0x2

.field public static final greylist-max-o ANIM_SCENE_TRANSITION:I = 0x5

.field public static final greylist-max-o ANIM_THUMBNAIL_ASPECT_SCALE_DOWN:I = 0x9

.field public static final greylist-max-o ANIM_THUMBNAIL_ASPECT_SCALE_UP:I = 0x8

.field public static final greylist-max-o ANIM_THUMBNAIL_SCALE_DOWN:I = 0x4

.field public static final greylist-max-o ANIM_THUMBNAIL_SCALE_UP:I = 0x3

.field public static final blacklist ANIM_UNDEFINED:I = -0x1

.field public static final whitelist EXTRA_USAGE_TIME_REPORT:Ljava/lang/String; = "android.activity.usage_time"

.field public static final whitelist EXTRA_USAGE_TIME_REPORT_PACKAGES:Ljava/lang/String; = "android.usage_time_packages"

.field private static final blacklist KEY_ALLOW_PASS_THROUGH_ON_TOUCH_OUTSIDE:Ljava/lang/String; = "android.activity.allowPassThroughOnTouchOutside"

.field private static final greylist-max-o KEY_ANIMATION_FINISHED_LISTENER:Ljava/lang/String; = "android:activity.animationFinishedListener"

.field private static final blacklist KEY_ANIM_ABORT_LISTENER:Ljava/lang/String; = "android:activity.animAbortListener"

.field public static final blacklist KEY_ANIM_BACKGROUND_COLOR:Ljava/lang/String; = "android:activity.backgroundColor"

.field public static final greylist-max-o KEY_ANIM_ENTER_RES_ID:Ljava/lang/String; = "android:activity.animEnterRes"

.field public static final greylist-max-o KEY_ANIM_EXIT_RES_ID:Ljava/lang/String; = "android:activity.animExitRes"

.field public static final greylist-max-o KEY_ANIM_HEIGHT:Ljava/lang/String; = "android:activity.animHeight"

.field public static final greylist-max-o KEY_ANIM_IN_PLACE_RES_ID:Ljava/lang/String; = "android:activity.animInPlaceRes"

.field private static final greylist-max-o KEY_ANIM_SPECS:Ljava/lang/String; = "android:activity.animSpecs"

.field public static final greylist-max-o KEY_ANIM_START_LISTENER:Ljava/lang/String; = "android:activity.animStartListener"

.field public static final greylist-max-o KEY_ANIM_START_X:Ljava/lang/String; = "android:activity.animStartX"

.field public static final greylist-max-o KEY_ANIM_START_Y:Ljava/lang/String; = "android:activity.animStartY"

.field public static final greylist-max-o KEY_ANIM_THUMBNAIL:Ljava/lang/String; = "android:activity.animThumbnail"

.field public static final greylist-max-o KEY_ANIM_TYPE:Ljava/lang/String; = "android:activity.animType"

.field public static final greylist-max-o KEY_ANIM_WIDTH:Ljava/lang/String; = "android:activity.animWidth"

.field private static final blacklist KEY_APPLY_ACTIVITY_FLAGS_FOR_BUBBLES:Ljava/lang/String; = "android:activity.applyActivityFlagsForBubbles"

.field private static final blacklist KEY_APPLY_MULTIPLE_TASK_FLAG_FOR_SHORTCUT:Ljava/lang/String; = "android:activity.applyMultipleTaskFlagForShortcut"

.field private static final blacklist KEY_APPLY_NO_USER_ACTION_FLAG_FOR_SHORTCUT:Ljava/lang/String; = "android:activity.applyNoUserActionFlagForShortcut"

.field private static final greylist-max-o KEY_AVOID_MOVE_TO_FRONT:Ljava/lang/String; = "android.activity.avoidMoveToFront"

.field private static final blacklist KEY_CALLER_DISPLAY_ID:Ljava/lang/String; = "android.activity.callerDisplayId"

.field private static final blacklist KEY_DISABLE_STARTING_WINDOW:Ljava/lang/String; = "android.activity.disableStarting"

.field private static final greylist-max-o KEY_DISALLOW_ENTER_PICTURE_IN_PICTURE_WHILE_LAUNCHING:Ljava/lang/String; = "android:activity.disallowEnterPictureInPictureWhileLaunching"

.field private static final blacklist KEY_DISMISS_KEYGUARD_IF_INSECURE:Ljava/lang/String; = "android.activity.dismissKeyguardIfInsecure"

.field private static final blacklist KEY_FLEXIBLE_LAUNCH_SIZE:Ljava/lang/String; = "android.activity.flexibleLaunchSize"

.field private static final blacklist KEY_FREEZE_RECENT_TASKS_REORDERING:Ljava/lang/String; = "android.activity.freezeRecentTasksReordering"

.field private static final greylist-max-o KEY_INSTANT_APP_VERIFICATION_BUNDLE:Ljava/lang/String; = "android:instantapps.installerbundle"

.field private static final blacklist KEY_LAUNCHED_FROM_BUBBLE:Ljava/lang/String; = "android.activity.launchTypeBubble"

.field private static final greylist-max-o KEY_LAUNCH_ACTIVITY_TYPE:Ljava/lang/String; = "android.activity.activityType"

.field public static final greylist-max-o KEY_LAUNCH_BOUNDS:Ljava/lang/String; = "android:activity.launchBounds"

.field public static final blacklist KEY_LAUNCH_COOKIE:Ljava/lang/String; = "android.activity.launchCookie"

.field private static final greylist-max-o KEY_LAUNCH_DISPLAY_ID:Ljava/lang/String; = "android.activity.launchDisplayId"

.field private static final blacklist KEY_LAUNCH_INTO_PIP_PARAMS:Ljava/lang/String; = "android.activity.launchIntoPipParams"

.field public static final blacklist KEY_LAUNCH_ROOT_TASK_TOKEN:Ljava/lang/String; = "android.activity.launchRootTaskToken"

.field private static final blacklist KEY_LAUNCH_TASK_DISPLAY_AREA_FEATURE_ID:Ljava/lang/String; = "android.activity.launchTaskDisplayAreaFeatureId"

.field private static final blacklist KEY_LAUNCH_TASK_DISPLAY_AREA_TOKEN:Ljava/lang/String; = "android.activity.launchTaskDisplayAreaToken"

.field public static final blacklist KEY_LAUNCH_TASK_FRAGMENT_TOKEN:Ljava/lang/String; = "android.activity.launchTaskFragmentToken"

.field private static final greylist-max-o KEY_LAUNCH_TASK_ID:Ljava/lang/String; = "android.activity.launchTaskId"

.field private static final greylist-max-o KEY_LAUNCH_WINDOWING_MODE:Ljava/lang/String; = "android.activity.windowingMode"

.field public static final blacklist KEY_LEGACY_PERMISSION_PROMPT_ELIGIBLE:Ljava/lang/String; = "android:activity.legacyPermissionPromptEligible"

.field private static final greylist-max-o KEY_LOCK_TASK_MODE:Ljava/lang/String; = "android:activity.lockTaskMode"

.field private static final blacklist KEY_OVERRIDE_TASK_TRANSITION:Ljava/lang/String; = "android:activity.overrideTaskTransition"

.field public static final greylist-max-o KEY_PACKAGE_NAME:Ljava/lang/String; = "android:activity.packageName"

.field private static final blacklist KEY_PENDING_INTENT_CREATOR_BACKGROUND_ACTIVITY_START_MODE:Ljava/lang/String; = "android.activity.pendingIntentCreatorBackgroundActivityStartMode"

.field private static final blacklist KEY_PENDING_INTENT_LAUNCH_FLAGS:Ljava/lang/String; = "android.activity.pendingIntentLaunchFlags"

.field private static final greylist-max-o KEY_REMOTE_ANIMATION_ADAPTER:Ljava/lang/String; = "android:activity.remoteAnimationAdapter"

.field private static final blacklist KEY_REMOTE_TRANSITION:Ljava/lang/String; = "android:activity.remoteTransition"

.field private static final blacklist KEY_REMOVE_WITH_TASK_ORGANIZER:Ljava/lang/String; = "android.activity.removeWithTaskOrganizer"

.field private static final greylist-max-o KEY_ROTATION_ANIMATION_HINT:Ljava/lang/String; = "android:activity.rotationAnimationHint"

.field private static final blacklist KEY_SCENE_TRANSITION_INFO:Ljava/lang/String; = "android:activity.sceneTransitionInfo"

.field private static final blacklist KEY_SHARE_IDENTITY:Ljava/lang/String; = "android:activity.shareIdentity"

.field private static final blacklist KEY_SOURCE_INFO:Ljava/lang/String; = "android.activity.sourceInfo"

.field private static final greylist-max-o KEY_SPECS_FUTURE:Ljava/lang/String; = "android:activity.specsFuture"

.field private static final blacklist KEY_SPLASH_SCREEN_STYLE:Ljava/lang/String; = "android.activity.splashScreenStyle"

.field public static final blacklist KEY_SPLASH_SCREEN_THEME:Ljava/lang/String; = "android.activity.splashScreenTheme"

.field private static final blacklist KEY_TASK_ALWAYS_ON_TOP:Ljava/lang/String; = "android.activity.alwaysOnTop"

.field private static final greylist-max-o KEY_TASK_OVERLAY:Ljava/lang/String; = "android.activity.taskOverlay"

.field private static final greylist-max-o KEY_TASK_OVERLAY_CAN_RESUME:Ljava/lang/String; = "android.activity.taskOverlayCanResume"

.field public static final blacklist KEY_TRANSIENT_LAUNCH:Ljava/lang/String; = "android.activity.transientLaunch"

.field private static final greylist-max-o KEY_USAGE_TIME_REPORT:Ljava/lang/String; = "android:activity.usageTimeReport"

.field public static final whitelist MODE_BACKGROUND_ACTIVITY_START_ALLOWED:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MODE_BACKGROUND_ACTIVITY_START_ALLOW_ALWAYS:I = 0x3

.field public static final whitelist MODE_BACKGROUND_ACTIVITY_START_ALLOW_IF_VISIBLE:I = 0x4

.field public static final blacklist MODE_BACKGROUND_ACTIVITY_START_COMPAT:I = -0x1

.field public static final whitelist MODE_BACKGROUND_ACTIVITY_START_DENIED:I = 0x2

.field public static final whitelist MODE_BACKGROUND_ACTIVITY_START_SYSTEM_DEFINED:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ActivityOptions"


# instance fields
.field private blacklist mAllowPassThroughOnTouchOutside:Z

.field private greylist-max-o mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

.field private blacklist mAnimationAbortListener:Landroid/os/IRemoteCallback;

.field private greylist-max-o mAnimationFinishedListener:Landroid/os/IRemoteCallback;

.field private greylist-max-o mAnimationStartedListener:Landroid/os/IRemoteCallback;

.field private greylist-max-o mAnimationType:I

.field private greylist-max-o mAppVerificationBundle:Landroid/os/Bundle;

.field private blacklist mApplyActivityFlagsForBubbles:Z

.field private blacklist mApplyMultipleTaskFlagForShortcut:Z

.field private blacklist mApplyNoUserActionFlagForShortcut:Z

.field private greylist-max-o mAvoidMoveToFront:Z

.field private blacklist mCallerDisplayId:I

.field private blacklist mCustomBackgroundColor:I

.field private greylist-max-o mCustomEnterResId:I

.field private greylist-max-o mCustomExitResId:I

.field private greylist-max-o mCustomInPlaceResId:I

.field private blacklist mDisableStartingWindow:Z

.field private greylist-max-o mDisallowEnterPictureInPictureWhileLaunching:Z

.field private blacklist mDismissKeyguardIfInsecure:Z

.field private blacklist mFlexibleLaunchSize:Z

.field private blacklist mFreezeRecentTasksReordering:Z

.field private greylist-max-o mHeight:I

.field private blacklist mIsEligibleForLegacyPermissionPrompt:Z

.field private greylist-max-o mLaunchActivityType:I

.field private greylist-max-o mLaunchBounds:Landroid/graphics/Rect;

.field private blacklist mLaunchCookie:Landroid/os/IBinder;

.field private greylist-max-o mLaunchDisplayId:I

.field private blacklist mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

.field private blacklist mLaunchRootTask:Landroid/window/WindowContainerToken;

.field private blacklist mLaunchTaskDisplayArea:Landroid/window/WindowContainerToken;

.field private blacklist mLaunchTaskDisplayAreaFeatureId:I

.field private blacklist mLaunchTaskFragmentToken:Landroid/os/IBinder;

.field private greylist-max-o mLaunchTaskId:I

.field private greylist-max-o mLaunchWindowingMode:I

.field private blacklist mLaunchedFromBubble:Z

.field private greylist-max-o mLockTaskMode:Z

.field private blacklist mOverrideTaskTransition:Z

.field private greylist-max-o mPackageName:Ljava/lang/String;

.field private blacklist mPendingIntentCreatorBackgroundActivityStartMode:I

.field private blacklist mPendingIntentLaunchFlags:I

.field private greylist-max-o mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

.field private blacklist mRemoteTransition:Landroid/window/RemoteTransition;

.field private blacklist mRemoveWithTaskOrganizer:Z

.field private greylist-max-o mRotationAnimationHint:I

.field private blacklist mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

.field private blacklist mShareIdentity:Z

.field private blacklist mSourceInfo:Landroid/app/ActivityOptions$SourceInfo;

.field private greylist-max-o mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

.field private blacklist mSplashScreenStyle:I

.field private blacklist mSplashScreenThemeResName:Ljava/lang/String;

.field private greylist-max-o mStartX:I

.field private greylist-max-o mStartY:I

.field private blacklist mTaskAlwaysOnTop:Z

.field private greylist-max-o mTaskOverlay:Z

.field private greylist-max-o mTaskOverlayCanResume:Z

.field private greylist-max-o mThumbnail:Landroid/graphics/Bitmap;

.field private blacklist mTransientLaunch:Z

.field private greylist-max-o mUsageTimeReport:Landroid/app/PendingIntent;

.field private greylist-max-o mWidth:I


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 3

    .line 1339
    invoke-direct {p0}, Landroid/app/ComponentOptions;-><init>()V

    .line 534
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 549
    iput v0, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    .line 550
    iput v0, p0, Landroid/app/ActivityOptions;->mCallerDisplayId:I

    .line 552
    iput v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayAreaFeatureId:I

    .line 555
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/ActivityOptions;->mLaunchWindowingMode:I

    .line 557
    iput v1, p0, Landroid/app/ActivityOptions;->mLaunchActivityType:I

    .line 559
    iput v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    .line 561
    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    .line 562
    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mShareIdentity:Z

    .line 574
    iput v0, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    .line 582
    iput v0, p0, Landroid/app/ActivityOptions;->mSplashScreenStyle:I

    .line 590
    iput v1, p0, Landroid/app/ActivityOptions;->mPendingIntentCreatorBackgroundActivityStartMode:I

    .line 593
    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mFlexibleLaunchSize:Z

    .line 1340
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "opts"    # Landroid/os/Bundle;

    .line 1344
    invoke-direct {p0, p1}, Landroid/app/ComponentOptions;-><init>(Landroid/os/Bundle;)V

    .line 534
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 549
    iput v0, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    .line 550
    iput v0, p0, Landroid/app/ActivityOptions;->mCallerDisplayId:I

    .line 552
    iput v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayAreaFeatureId:I

    .line 555
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/ActivityOptions;->mLaunchWindowingMode:I

    .line 557
    iput v1, p0, Landroid/app/ActivityOptions;->mLaunchActivityType:I

    .line 559
    iput v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    .line 561
    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    .line 562
    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mShareIdentity:Z

    .line 574
    iput v0, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    .line 582
    iput v0, p0, Landroid/app/ActivityOptions;->mSplashScreenStyle:I

    .line 590
    iput v1, p0, Landroid/app/ActivityOptions;->mPendingIntentCreatorBackgroundActivityStartMode:I

    .line 593
    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mFlexibleLaunchSize:Z

    .line 1346
    const-string v2, "android:activity.packageName"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 1348
    :try_start_27
    const-string v2, "android:activity.usageTimeReport"

    const-class v3, Landroid/app/PendingIntent;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    iput-object v2, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;
    :try_end_33
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_33} :catch_34

    .line 1351
    goto :goto_3a

    .line 1349
    :catch_34
    move-exception v2

    .line 1350
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "ActivityOptions"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1352
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_3a
    const-string v2, "android:activity.launchBounds"

    const-class v3, Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iput-object v2, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    .line 1353
    const-string v2, "android:activity.animType"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1354
    iget v2, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    const-string v3, "android:activity.animHeight"

    const-string v4, "android:activity.animWidth"

    const-string v5, "android:activity.animStartY"

    const-string v6, "android:activity.animStartX"

    const-string v7, "android:activity.animStartListener"

    packed-switch v2, :pswitch_data_298

    :pswitch_5d
    goto/16 :goto_ea

    .line 1364
    :pswitch_5f
    const-string v2, "android:activity.animInPlaceRes"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    .line 1365
    goto/16 :goto_ea

    .line 1393
    :pswitch_69
    const-string v2, "android:activity.sceneTransitionInfo"

    const-class v3, Landroid/app/ActivityOptions$SceneTransitionInfo;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityOptions$SceneTransitionInfo;

    iput-object v2, p0, Landroid/app/ActivityOptions;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    goto :goto_ea

    .line 1380
    :pswitch_76
    const-string v2, "android:activity.animThumbnail"

    const-class v8, Landroid/hardware/HardwareBuffer;

    invoke-virtual {p1, v2, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/HardwareBuffer;

    .line 1381
    .local v2, "buffer":Landroid/hardware/HardwareBuffer;
    if-eqz v2, :cond_89

    .line 1382
    const/4 v8, 0x0

    invoke-static {v2, v8}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 1384
    :cond_89
    invoke-virtual {p1, v6, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Landroid/app/ActivityOptions;->mStartX:I

    .line 1385
    invoke-virtual {p1, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Landroid/app/ActivityOptions;->mStartY:I

    .line 1386
    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/app/ActivityOptions;->mWidth:I

    .line 1387
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mHeight:I

    .line 1388
    nop

    .line 1389
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 1388
    invoke-static {v3}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 1390
    goto :goto_ea

    .line 1369
    .end local v2    # "buffer":Landroid/hardware/HardwareBuffer;
    :pswitch_ad
    invoke-virtual {p1, v6, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mStartX:I

    .line 1370
    invoke-virtual {p1, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mStartY:I

    .line 1371
    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mWidth:I

    .line 1372
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mHeight:I

    .line 1373
    goto :goto_ea

    .line 1356
    :pswitch_c6
    const-string v2, "android:activity.animEnterRes"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    .line 1357
    const-string v2, "android:activity.animExitRes"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    .line 1358
    const-string v2, "android:activity.backgroundColor"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mCustomBackgroundColor:I

    .line 1359
    nop

    .line 1360
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1359
    invoke-static {v2}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v2

    iput-object v2, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 1361
    nop

    .line 1397
    :goto_ea
    const-string v2, "android:activity.lockTaskMode"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    .line 1398
    const-string v2, "android:activity.shareIdentity"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/ActivityOptions;->mShareIdentity:Z

    .line 1399
    const-string v2, "android.activity.launchDisplayId"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    .line 1400
    const-string v2, "android.activity.callerDisplayId"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mCallerDisplayId:I

    .line 1401
    const-string v2, "android.activity.launchTaskDisplayAreaToken"

    const-class v3, Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/WindowContainerToken;

    iput-object v2, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayArea:Landroid/window/WindowContainerToken;

    .line 1402
    const-string v2, "android.activity.launchTaskDisplayAreaFeatureId"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayAreaFeatureId:I

    .line 1404
    const-string v2, "android.activity.launchRootTaskToken"

    const-class v3, Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/WindowContainerToken;

    iput-object v2, p0, Landroid/app/ActivityOptions;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    .line 1405
    const-string v2, "android.activity.launchTaskFragmentToken"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Landroid/app/ActivityOptions;->mLaunchTaskFragmentToken:Landroid/os/IBinder;

    .line 1406
    const-string v2, "android.activity.windowingMode"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mLaunchWindowingMode:I

    .line 1407
    const-string v2, "android.activity.activityType"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mLaunchActivityType:I

    .line 1408
    const-string v2, "android.activity.launchTaskId"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    .line 1409
    const-string v2, "android.activity.pendingIntentLaunchFlags"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mPendingIntentLaunchFlags:I

    .line 1410
    const-string v2, "android.activity.alwaysOnTop"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/ActivityOptions;->mTaskAlwaysOnTop:Z

    .line 1411
    const-string v2, "android.activity.taskOverlay"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/ActivityOptions;->mTaskOverlay:Z

    .line 1412
    const-string v2, "android.activity.taskOverlayCanResume"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/ActivityOptions;->mTaskOverlayCanResume:Z

    .line 1413
    const-string v2, "android.activity.avoidMoveToFront"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/ActivityOptions;->mAvoidMoveToFront:Z

    .line 1414
    const-string v2, "android.activity.freezeRecentTasksReordering"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/ActivityOptions;->mFreezeRecentTasksReordering:Z

    .line 1415
    const-string v2, "android:activity.disallowEnterPictureInPictureWhileLaunching"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/ActivityOptions;->mDisallowEnterPictureInPictureWhileLaunching:Z

    .line 1417
    const-string v2, "android:activity.applyActivityFlagsForBubbles"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/ActivityOptions;->mApplyActivityFlagsForBubbles:Z

    .line 1419
    const-string v2, "android:activity.applyMultipleTaskFlagForShortcut"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/ActivityOptions;->mApplyMultipleTaskFlagForShortcut:Z

    .line 1421
    const-string v2, "android:activity.applyNoUserActionFlagForShortcut"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/ActivityOptions;->mApplyNoUserActionFlagForShortcut:Z

    .line 1423
    const-string v2, "android:activity.animSpecs"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1bb

    .line 1424
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 1425
    .local v2, "specs":[Landroid/os/Parcelable;
    array-length v3, v2

    new-array v3, v3, [Landroid/view/AppTransitionAnimationSpec;

    iput-object v3, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    .line 1426
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_1ae
    if-ltz v3, :cond_1bb

    .line 1427
    iget-object v4, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    aget-object v5, v2, v3

    check-cast v5, Landroid/view/AppTransitionAnimationSpec;

    aput-object v5, v4, v3

    .line 1426
    add-int/lit8 v3, v3, -0x1

    goto :goto_1ae

    .line 1430
    .end local v2    # "specs":[Landroid/os/Parcelable;
    .end local v3    # "i":I
    :cond_1bb
    const-string v2, "android:activity.animationFinishedListener"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1ce

    .line 1431
    nop

    .line 1432
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1431
    invoke-static {v2}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v2

    iput-object v2, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    .line 1434
    :cond_1ce
    const-string v2, "android.activity.sourceInfo"

    const-class v3, Landroid/app/ActivityOptions$SourceInfo;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityOptions$SourceInfo;

    iput-object v2, p0, Landroid/app/ActivityOptions;->mSourceInfo:Landroid/app/ActivityOptions$SourceInfo;

    .line 1435
    const-string v2, "android:activity.rotationAnimationHint"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    .line 1436
    const-string v0, "android:instantapps.installerbundle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAppVerificationBundle:Landroid/os/Bundle;

    .line 1437
    const-string v0, "android:activity.specsFuture"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1fc

    .line 1438
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IAppTransitionAnimationSpecsFuture$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IAppTransitionAnimationSpecsFuture;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 1441
    :cond_1fc
    const-string v0, "android:activity.remoteAnimationAdapter"

    const-class v2, Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/RemoteAnimationAdapter;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 1442
    const-string v0, "android.activity.launchCookie"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityOptions;->mLaunchCookie:Landroid/os/IBinder;

    .line 1443
    const-string v0, "android:activity.remoteTransition"

    const-class v2, Landroid/window/RemoteTransition;

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/RemoteTransition;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    .line 1444
    const-string v0, "android:activity.overrideTaskTransition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mOverrideTaskTransition:Z

    .line 1445
    const-string v0, "android.activity.splashScreenTheme"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityOptions;->mSplashScreenThemeResName:Ljava/lang/String;

    .line 1446
    const-string v0, "android.activity.removeWithTaskOrganizer"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mRemoveWithTaskOrganizer:Z

    .line 1447
    const-string v0, "android.activity.launchTypeBubble"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mLaunchedFromBubble:Z

    .line 1448
    const-string v0, "android.activity.transientLaunch"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mTransientLaunch:Z

    .line 1449
    const-string v0, "android.activity.splashScreenStyle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mSplashScreenStyle:I

    .line 1450
    const-string v0, "android.activity.launchIntoPipParams"

    const-class v2, Landroid/app/PictureInPictureParams;

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PictureInPictureParams;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    .line 1451
    nop

    .line 1452
    const-string v0, "android:activity.legacyPermissionPromptEligible"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mIsEligibleForLegacyPermissionPrompt:Z

    .line 1453
    const-string v0, "android.activity.dismissKeyguardIfInsecure"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mDismissKeyguardIfInsecure:Z

    .line 1454
    const-string v0, "android.activity.pendingIntentCreatorBackgroundActivityStartMode"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mPendingIntentCreatorBackgroundActivityStartMode:I

    .line 1457
    const-string v0, "android.activity.flexibleLaunchSize"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mFlexibleLaunchSize:Z

    .line 1458
    const-string v0, "android.activity.disableStarting"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mDisableStartingWindow:Z

    .line 1459
    const-string v0, "android.activity.allowPassThroughOnTouchOutside"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mAllowPassThroughOnTouchOutside:Z

    .line 1460
    nop

    .line 1461
    const-string v0, "android:activity.animAbortListener"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1460
    invoke-static {v0}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationAbortListener:Landroid/os/IRemoteCallback;

    .line 1462
    return-void

    nop

    :pswitch_data_298
    .packed-switch 0x1
        :pswitch_c6
        :pswitch_ad
        :pswitch_76
        :pswitch_76
        :pswitch_69
        :pswitch_5d
        :pswitch_5d
        :pswitch_76
        :pswitch_76
        :pswitch_5f
        :pswitch_ad
    .end packed-switch
.end method

.method public static greylist-max-o abort(Landroid/app/ActivityOptions;)V
    .registers 1
    .param p0, "options"    # Landroid/app/ActivityOptions;

    .line 1626
    if-eqz p0, :cond_5

    .line 1627
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->abort()V

    .line 1629
    :cond_5
    return-void
.end method

.method public static greylist-max-o fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;
    .registers 2
    .param p0, "bOptions"    # Landroid/os/Bundle;

    .line 1621
    if-eqz p0, :cond_8

    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0, p0}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0
.end method

.method public static blacklist hasLaunchTargetContainer(Landroid/app/ActivityOptions;)Z
    .registers 3
    .param p0, "options"    # Landroid/app/ActivityOptions;

    .line 1633
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_28

    .line 1634
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayArea()Landroid/window/WindowContainerToken;

    move-result-object v0

    if-nez v0, :cond_28

    .line 1635
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayAreaFeatureId()I

    move-result v0

    if-ne v0, v1, :cond_28

    .line 1636
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object v0

    if-nez v0, :cond_28

    .line 1637
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v0

    if-ne v0, v1, :cond_28

    .line 1638
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getLaunchTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_26

    goto :goto_28

    :cond_26
    const/4 v0, 0x0

    goto :goto_29

    :cond_28
    :goto_28
    const/4 v0, 0x1

    .line 1633
    :goto_29
    return v0
.end method

.method private static greylist-max-o makeAspectScaledThumbnailAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;
    .registers 12
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "targetWidth"    # I
    .param p5, "targetHeight"    # I
    .param p6, "handler"    # Landroid/os/Handler;
    .param p7, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .param p8, "scaleUp"    # Z

    .line 1029
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1030
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 1031
    if-eqz p8, :cond_14

    const/16 v1, 0x8

    goto :goto_16

    .line 1032
    :cond_14
    const/16 v1, 0x9

    :goto_16
    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1033
    iput-object p1, v0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 1034
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1035
    .local v1, "pts":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1036
    const/4 v2, 0x0

    aget v2, v1, v2

    add-int/2addr v2, p2

    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    .line 1037
    const/4 v2, 0x1

    aget v2, v1, v2

    add-int/2addr v2, p3

    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    .line 1038
    iput p4, v0, Landroid/app/ActivityOptions;->mWidth:I

    .line 1039
    iput p5, v0, Landroid/app/ActivityOptions;->mHeight:I

    .line 1040
    invoke-direct {v0, p6, p7}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    .line 1041
    return-object v0
.end method

.method public static whitelist makeBasic()Landroid/app/ActivityOptions;
    .registers 1

    .line 1266
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1267
    .local v0, "opts":Landroid/app/ActivityOptions;
    return-object v0
.end method

.method public static whitelist makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;
    .registers 8
    .param p0, "source"    # Landroid/view/View;
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 890
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 891
    .local v0, "opts":Landroid/app/ActivityOptions;
    const/16 v1, 0xb

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 892
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 893
    .local v1, "pts":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 894
    const/4 v2, 0x0

    aget v2, v1, v2

    add-int/2addr v2, p1

    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    .line 895
    const/4 v2, 0x1

    aget v2, v1, v2

    add-int/2addr v2, p2

    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    .line 896
    iput p3, v0, Landroid/app/ActivityOptions;->mWidth:I

    .line 897
    iput p4, v0, Landroid/app/ActivityOptions;->mHeight:I

    .line 898
    return-object v0
.end method

.method public static whitelist makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enterResId"    # I
    .param p2, "exitResId"    # I

    .line 613
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "enterResId":I
    .end local p2    # "exitResId":I
    .local v0, "context":Landroid/content/Context;
    .local v1, "enterResId":I
    .local v2, "exitResId":I
    invoke-static/range {v0 .. v5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist makeCustomAnimation(Landroid/content/Context;III)Landroid/app/ActivityOptions;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enterResId"    # I
    .param p2, "exitResId"    # I
    .param p3, "backgroundColor"    # I

    .line 634
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "enterResId":I
    .end local p2    # "exitResId":I
    .end local p3    # "backgroundColor":I
    .local v0, "context":Landroid/content/Context;
    .local v1, "enterResId":I
    .local v2, "exitResId":I
    .local v3, "backgroundColor":I
    invoke-static/range {v0 .. v5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method public static greylist makeCustomAnimation(Landroid/content/Context;IIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enterResId"    # I
    .param p2, "exitResId"    # I
    .param p3, "backgroundColor"    # I
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .line 661
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 662
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 663
    const/4 v1, 0x1

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 664
    iput p1, v0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    .line 665
    iput p2, v0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    .line 666
    iput p3, v0, Landroid/app/ActivityOptions;->mCustomBackgroundColor:I

    .line 667
    invoke-direct {v0, p4, p5}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    .line 668
    return-object v0
.end method

.method public static blacklist makeCustomAnimation(Landroid/content/Context;IIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enterResId"    # I
    .param p2, "exitResId"    # I
    .param p3, "backgroundColor"    # I
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "startedListener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .param p6, "finishedListener"    # Landroid/app/ActivityOptions$OnAnimationFinishedListener;

    .line 698
    invoke-static/range {p0 .. p5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 700
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-direct {v0, p4, p6}, Landroid/app/ActivityOptions;->setOnAnimationFinishedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)V

    .line 701
    return-object v0
.end method

.method public static greylist-max-o makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "animId"    # I

    .line 753
    if-eqz p1, :cond_14

    .line 757
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 758
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 759
    const/16 v1, 0xa

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 760
    iput p1, v0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    .line 761
    return-object v0

    .line 754
    .end local v0    # "opts":Landroid/app/ActivityOptions;
    :cond_14
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must specify a valid animation."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist makeCustomTaskAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enterResId"    # I
    .param p2, "exitResId"    # I
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "startedListener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .param p5, "finishedListener"    # Landroid/app/ActivityOptions$OnAnimationFinishedListener;

    .line 733
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "enterResId":I
    .end local p2    # "exitResId":I
    .end local p3    # "handler":Landroid/os/Handler;
    .end local p4    # "startedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .end local p5    # "finishedListener":Landroid/app/ActivityOptions$OnAnimationFinishedListener;
    .local v0, "context":Landroid/content/Context;
    .local v1, "enterResId":I
    .local v2, "exitResId":I
    .local v4, "handler":Landroid/os/Handler;
    .local v5, "startedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .local v6, "finishedListener":Landroid/app/ActivityOptions$OnAnimationFinishedListener;
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;

    move-result-object p0

    .line 735
    .local p0, "opts":Landroid/app/ActivityOptions;
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mOverrideTaskTransition:Z

    .line 736
    return-object p0
.end method

.method public static whitelist makeLaunchIntoPip(Landroid/app/PictureInPictureParams;)Landroid/app/ActivityOptions;
    .registers 4
    .param p0, "pictureInPictureParams"    # Landroid/app/PictureInPictureParams;

    .line 1326
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1327
    .local v0, "opts":Landroid/app/ActivityOptions;
    new-instance v1, Landroid/app/PictureInPictureParams$Builder;

    invoke-direct {v1, p0}, Landroid/app/PictureInPictureParams$Builder;-><init>(Landroid/app/PictureInPictureParams;)V

    .line 1328
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/PictureInPictureParams$Builder;->setIsLaunchIntoPip(Z)Landroid/app/PictureInPictureParams$Builder;

    move-result-object v1

    .line 1329
    invoke-virtual {v1}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    .line 1330
    return-object v0
.end method

.method public static greylist makeMultiThumbFutureAspectScaleAnimation(Landroid/content/Context;Landroid/os/Handler;Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "specsFuture"    # Landroid/view/IAppTransitionAnimationSpecsFuture;
    .param p3, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .param p4, "scaleUp"    # Z

    .line 988
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 989
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 990
    if-eqz p4, :cond_10

    .line 991
    const/16 v1, 0x8

    goto :goto_12

    .line 992
    :cond_10
    const/16 v1, 0x9

    :goto_12
    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 993
    iput-object p2, v0, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 994
    invoke-direct {v0, p1, p3}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    .line 995
    return-object v0
.end method

.method public static greylist-max-o makeOpenCrossProfileAppsAnimation()Landroid/app/ActivityOptions;
    .registers 2

    .line 909
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 910
    .local v0, "options":Landroid/app/ActivityOptions;
    const/16 v1, 0xc

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 911
    return-object v0
.end method

.method public static greylist makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;
    .registers 3
    .param p0, "remoteAnimationAdapter"    # Landroid/view/RemoteAnimationAdapter;

    .line 1280
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1281
    .local v0, "opts":Landroid/app/ActivityOptions;
    iput-object p0, v0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 1282
    const/16 v1, 0xd

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1283
    return-object v0
.end method

.method public static blacklist makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;Landroid/window/RemoteTransition;)Landroid/app/ActivityOptions;
    .registers 4
    .param p0, "remoteAnimationAdapter"    # Landroid/view/RemoteAnimationAdapter;
    .param p1, "remoteTransition"    # Landroid/window/RemoteTransition;

    .line 1295
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1296
    .local v0, "opts":Landroid/app/ActivityOptions;
    iput-object p0, v0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 1297
    const/16 v1, 0xd

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1298
    iput-object p1, v0, Landroid/app/ActivityOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    .line 1299
    return-object v0
.end method

.method public static blacklist makeRemoteTransition(Landroid/window/RemoteTransition;)Landroid/app/ActivityOptions;
    .registers 2
    .param p0, "remoteTransition"    # Landroid/window/RemoteTransition;

    .line 1310
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1311
    .local v0, "opts":Landroid/app/ActivityOptions;
    iput-object p0, v0, Landroid/app/ActivityOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    .line 1312
    return-object v0
.end method

.method public static whitelist makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;
    .registers 8
    .param p0, "source"    # Landroid/view/View;
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 861
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 862
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 863
    const/4 v1, 0x2

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 864
    new-array v1, v1, [I

    .line 865
    .local v1, "pts":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 866
    const/4 v2, 0x0

    aget v2, v1, v2

    add-int/2addr v2, p1

    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    .line 867
    const/4 v2, 0x1

    aget v2, v1, v2

    add-int/2addr v2, p2

    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    .line 868
    iput p3, v0, Landroid/app/ActivityOptions;->mWidth:I

    .line 869
    iput p4, v0, Landroid/app/ActivityOptions;->mHeight:I

    .line 870
    return-object v0
.end method

.method static greylist-max-o makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/app/ExitTransitionCoordinator;Ljava/util/ArrayList;ILandroid/content/Intent;)Landroid/app/ActivityOptions;
    .registers 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "exitCoordinator"    # Landroid/app/ExitTransitionCoordinator;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/app/ExitTransitionCoordinator;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/content/Intent;",
            ")",
            "Landroid/app/ActivityOptions;"
        }
    .end annotation

    .line 1226
    .local p2, "sharedElementNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1227
    .local v0, "opts":Landroid/app/ActivityOptions;
    const/4 v1, 0x5

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1228
    new-instance v1, Landroid/app/ActivityOptions$SceneTransitionInfo;

    invoke-direct {v1}, Landroid/app/ActivityOptions$SceneTransitionInfo;-><init>()V

    .line 1229
    .local v1, "info":Landroid/app/ActivityOptions$SceneTransitionInfo;
    invoke-virtual {v1, p2}, Landroid/app/ActivityOptions$SceneTransitionInfo;->setSharedElementNames(Ljava/util/ArrayList;)V

    .line 1230
    invoke-virtual {v1, p1}, Landroid/app/ActivityOptions$SceneTransitionInfo;->setResultReceiver(Landroid/os/ResultReceiver;)V

    .line 1231
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions$SceneTransitionInfo;->setReturning(Z)V

    .line 1232
    invoke-virtual {v1, p3}, Landroid/app/ActivityOptions$SceneTransitionInfo;->setResultCode(I)V

    .line 1233
    invoke-virtual {v1, p4}, Landroid/app/ActivityOptions$SceneTransitionInfo;->setResultData(Landroid/content/Intent;)V

    .line 1234
    if-nez p0, :cond_24

    .line 1235
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions$SceneTransitionInfo;->setExitCoordinatorKey(I)V

    goto :goto_2d

    .line 1237
    :cond_24
    iget-object v2, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    .line 1238
    invoke-virtual {v2, p1}, Landroid/app/ActivityTransitionState;->addExitTransitionCoordinator(Landroid/app/ExitTransitionCoordinator;)I

    move-result v2

    .line 1237
    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions$SceneTransitionInfo;->setExitCoordinatorKey(I)V

    .line 1241
    :goto_2d
    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setSceneTransitionInfo(Landroid/app/ActivityOptions$SceneTransitionInfo;)Landroid/app/ActivityOptions;

    .line 1242
    return-object v0
.end method

.method public static whitelist makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "sharedElement"    # Landroid/view/View;
    .param p2, "sharedElementName"    # Ljava/lang/String;

    .line 1081
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/util/Pair;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static varargs whitelist makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/ActivityOptions;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1107
    .local p1, "sharedElements":[Landroid/util/Pair;, "[Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1108
    .local v0, "opts":Landroid/app/ActivityOptions;
    new-instance v1, Landroid/app/ExitTransitionCoordinator$ActivityExitTransitionCallbacks;

    invoke-direct {v1, p0}, Landroid/app/ExitTransitionCoordinator$ActivityExitTransitionCallbacks;-><init>(Landroid/app/Activity;)V

    iget-object v2, p0, Landroid/app/Activity;->mExitTransitionListener:Landroid/app/SharedElementCallback;

    .line 1110
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 1108
    invoke-static {v1, v2, v3, v0, p1}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;Landroid/app/SharedElementCallback;Landroid/view/Window;Landroid/app/ActivityOptions;[Landroid/util/Pair;)Landroid/app/ExitTransitionCoordinator;

    move-result-object v1

    .line 1111
    .local v1, "exit":Landroid/app/ExitTransitionCoordinator;
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getSceneTransitionInfo()Landroid/app/ActivityOptions$SceneTransitionInfo;

    move-result-object v2

    .line 1112
    .local v2, "info":Landroid/app/ActivityOptions$SceneTransitionInfo;
    if-eqz v2, :cond_23

    .line 1113
    iget-object v3, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    .line 1114
    invoke-virtual {v3, v1}, Landroid/app/ActivityTransitionState;->addExitTransitionCoordinator(Landroid/app/ExitTransitionCoordinator;)I

    move-result v3

    .line 1113
    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions$SceneTransitionInfo;->setExitCoordinatorKey(I)V

    .line 1116
    :cond_23
    return-object v0
.end method

.method static blacklist makeSceneTransitionAnimation(Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;Landroid/app/SharedElementCallback;Landroid/view/Window;Landroid/app/ActivityOptions;[Landroid/util/Pair;)Landroid/app/ExitTransitionCoordinator;
    .registers 14
    .param p0, "exitCallbacks"    # Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;
    .param p1, "callback"    # Landroid/app/SharedElementCallback;
    .param p2, "window"    # Landroid/view/Window;
    .param p3, "opts"    # Landroid/app/ActivityOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;",
            "Landroid/app/SharedElementCallback;",
            "Landroid/view/Window;",
            "Landroid/app/ActivityOptions;",
            "[",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/ExitTransitionCoordinator;"
        }
    .end annotation

    .line 1175
    .local p4, "sharedElements":[Landroid/util/Pair;, "[Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    const/16 v0, 0xd

    invoke-virtual {p2, v0}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1176
    const/4 v0, 0x6

    iput v0, p3, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1177
    const/4 v0, 0x0

    return-object v0

    .line 1179
    :cond_d
    const/4 v0, 0x5

    iput v0, p3, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 1182
    .local v5, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1184
    .local v7, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p4, :cond_4c

    .line 1185
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1e
    array-length v1, p4

    if-ge v0, v1, :cond_4c

    .line 1186
    aget-object v1, p4, v0

    .line 1187
    .local v1, "sharedElement":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1188
    .local v2, "sharedElementName":Ljava/lang/String;
    if-eqz v2, :cond_44

    .line 1191
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1192
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/view/View;

    .line 1193
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_3c

    .line 1196
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/view/View;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1185
    .end local v1    # "sharedElement":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    .end local v2    # "sharedElementName":Ljava/lang/String;
    .end local v3    # "view":Landroid/view/View;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 1194
    .restart local v1    # "sharedElement":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    .restart local v2    # "sharedElementName":Ljava/lang/String;
    .restart local v3    # "view":Landroid/view/View;
    :cond_3c
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v6, "Shared element must not be null"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1189
    .end local v3    # "view":Landroid/view/View;
    :cond_44
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Shared element name must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1200
    .end local v0    # "i":I
    .end local v1    # "sharedElement":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    .end local v2    # "sharedElementName":Ljava/lang/String;
    :cond_4c
    new-instance v1, Landroid/app/ExitTransitionCoordinator;

    const/4 v8, 0x0

    move-object v6, v5

    move-object v2, p0

    move-object v4, p1

    move-object v3, p2

    .end local p0    # "exitCallbacks":Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;
    .end local p1    # "callback":Landroid/app/SharedElementCallback;
    .end local p2    # "window":Landroid/view/Window;
    .local v2, "exitCallbacks":Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;
    .local v3, "window":Landroid/view/Window;
    .local v4, "callback":Landroid/app/SharedElementCallback;
    invoke-direct/range {v1 .. v8}, Landroid/app/ExitTransitionCoordinator;-><init>(Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;Landroid/view/Window;Landroid/app/SharedElementCallback;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 1202
    .local v1, "exit":Landroid/app/ExitTransitionCoordinator;
    new-instance p0, Landroid/app/ActivityOptions$SceneTransitionInfo;

    invoke-direct {p0}, Landroid/app/ActivityOptions$SceneTransitionInfo;-><init>()V

    .line 1203
    .local p0, "info":Landroid/app/ActivityOptions$SceneTransitionInfo;
    invoke-virtual {p0, v1}, Landroid/app/ActivityOptions$SceneTransitionInfo;->setResultReceiver(Landroid/os/ResultReceiver;)V

    .line 1204
    invoke-virtual {p0, v5}, Landroid/app/ActivityOptions$SceneTransitionInfo;->setSharedElementNames(Ljava/util/ArrayList;)V

    .line 1205
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/ActivityOptions$SceneTransitionInfo;->setReturning(Z)V

    .line 1206
    invoke-virtual {p3, p0}, Landroid/app/ActivityOptions;->setSceneTransitionInfo(Landroid/app/ActivityOptions$SceneTransitionInfo;)Landroid/app/ActivityOptions;

    .line 1207
    return-object v1
.end method

.method public static whitelist makeTaskLaunchBehind()Landroid/app/ActivityOptions;
    .registers 2

    .line 1256
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1257
    .local v0, "opts":Landroid/app/ActivityOptions;
    const/4 v1, 0x7

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1258
    return-object v0
.end method

.method private static greylist-max-o makeThumbnailAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;
    .registers 9
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .param p5, "scaleUp"    # Z

    .line 966
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 967
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 968
    if-eqz p5, :cond_13

    const/4 v1, 0x3

    goto :goto_14

    :cond_13
    const/4 v1, 0x4

    :goto_14
    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 969
    iput-object p1, v0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 970
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 971
    .local v1, "pts":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 972
    const/4 v2, 0x0

    aget v2, v1, v2

    add-int/2addr v2, p2

    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    .line 973
    const/4 v2, 0x1

    aget v2, v1, v2

    add-int/2addr v2, p3

    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    .line 974
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v2, p4}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    .line 975
    return-object v0
.end method

.method public static greylist-max-o makeThumbnailAspectScaleDownAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;
    .registers 17
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "targetWidth"    # I
    .param p5, "targetHeight"    # I
    .param p6, "handler"    # Landroid/os/Handler;
    .param p7, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .line 1021
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v8}, Landroid/app/ActivityOptions;->makeAspectScaledThumbnailAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;

    move-result-object v8

    return-object v8
.end method

.method public static greylist-max-o makeThumbnailAspectScaleDownAnimation(Landroid/view/View;[Landroid/view/AppTransitionAnimationSpec;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;
    .registers 7
    .param p0, "source"    # Landroid/view/View;
    .param p1, "specs"    # [Landroid/view/AppTransitionAnimationSpec;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "onAnimationStartedListener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .param p4, "onAnimationFinishedListener"    # Landroid/app/ActivityOptions$OnAnimationFinishedListener;

    .line 1050
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1051
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 1052
    const/16 v1, 0x9

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1053
    iput-object p1, v0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    .line 1054
    invoke-direct {v0, p2, p3}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    .line 1055
    invoke-direct {v0, p2, p4}, Landroid/app/ActivityOptions;->setOnAnimationFinishedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)V

    .line 1056
    return-object v0
.end method

.method public static whitelist makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Landroid/app/ActivityOptions;
    .registers 5
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I

    .line 936
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/ActivityOptions;->makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;
    .registers 11
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .line 959
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .end local p0    # "source":Landroid/view/View;
    .end local p1    # "thumbnail":Landroid/graphics/Bitmap;
    .end local p2    # "startX":I
    .end local p3    # "startY":I
    .end local p4    # "listener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .local v0, "source":Landroid/view/View;
    .local v1, "thumbnail":Landroid/graphics/Bitmap;
    .local v2, "startX":I
    .local v3, "startY":I
    .local v4, "listener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    invoke-static/range {v0 .. v5}, Landroid/app/ActivityOptions;->makeThumbnailAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method private blacklist sendResultIgnoreErrors(Landroid/os/IRemoteCallback;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "callback"    # Landroid/os/IRemoteCallback;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 1567
    if-eqz p1, :cond_8

    .line 1569
    :try_start_2
    invoke-interface {p1, p2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    .line 1570
    :goto_5
    goto :goto_8

    :catch_6
    move-exception v0

    goto :goto_5

    .line 1572
    :cond_8
    :goto_8
    return-void
.end method

.method public static blacklist setExitTransitionTimeout(J)V
    .registers 2
    .param p0, "timeoutMillis"    # J

    .line 1218
    sput-wide p0, Landroid/app/ExitTransitionCoordinator;->sMaxWaitMillis:J

    .line 1219
    return-void
.end method

.method private greylist-max-o setOnAnimationFinishedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)V
    .registers 4
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Landroid/app/ActivityOptions$OnAnimationFinishedListener;

    .line 795
    if-eqz p2, :cond_9

    .line 796
    new-instance v0, Landroid/app/ActivityOptions$2;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/ActivityOptions$2;-><init>(Landroid/app/ActivityOptions;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)V

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    .line 809
    :cond_9
    return-void
.end method

.method private greylist-max-o setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V
    .registers 4
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .line 766
    if-eqz p2, :cond_9

    .line 767
    new-instance v0, Landroid/app/ActivityOptions$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/ActivityOptions$1;-><init>(Landroid/app/ActivityOptions;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 779
    :cond_9
    return-void
.end method

.method public static varargs blacklist startSharedElementAnimation(Landroid/view/Window;Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;Landroid/app/SharedElementCallback;[Landroid/util/Pair;)Landroid/util/Pair;
    .registers 8
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "exitCallbacks"    # Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;
    .param p2, "callback"    # Landroid/app/SharedElementCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Window;",
            "Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;",
            "Landroid/app/SharedElementCallback;",
            "[",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/Pair<",
            "Landroid/app/ActivityOptions;",
            "Landroid/app/ExitTransitionCoordinator;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1135
    .local p3, "sharedElements":[Landroid/util/Pair;, "[Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1136
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-static {p1, p2, p0, v0, p3}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;Landroid/app/SharedElementCallback;Landroid/view/Window;Landroid/app/ActivityOptions;[Landroid/util/Pair;)Landroid/app/ExitTransitionCoordinator;

    move-result-object v1

    .line 1138
    .local v1, "exit":Landroid/app/ExitTransitionCoordinator;
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getSceneTransitionInfo()Landroid/app/ActivityOptions$SceneTransitionInfo;

    move-result-object v2

    .line 1139
    .local v2, "info":Landroid/app/ActivityOptions$SceneTransitionInfo;
    if-eqz v2, :cond_13

    .line 1140
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions$SceneTransitionInfo;->setExitCoordinatorKey(I)V

    .line 1142
    :cond_13
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    return-object v3
.end method

.method public static greylist-max-o stopSharedElementAnimation(Landroid/view/Window;)V
    .registers 5
    .param p0, "window"    # Landroid/view/Window;

    .line 1155
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1156
    .local v0, "decorView":Landroid/view/View;
    if-nez v0, :cond_7

    .line 1157
    return-void

    .line 1159
    :cond_7
    nop

    .line 1160
    const v1, 0x10202b8

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ExitTransitionCoordinator;

    .line 1161
    .local v2, "exit":Landroid/app/ExitTransitionCoordinator;
    if-eqz v2, :cond_2a

    .line 1162
    invoke-virtual {v2}, Landroid/app/ExitTransitionCoordinator;->cancelPendingTransitions()Z

    .line 1163
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 1164
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    .line 1165
    invoke-virtual {v2}, Landroid/app/ExitTransitionCoordinator;->resetViews()V

    .line 1166
    invoke-virtual {v2}, Landroid/app/ExitTransitionCoordinator;->clearState()V

    .line 1167
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1169
    :cond_2a
    return-void
.end method


# virtual methods
.method public greylist-max-o abort()V
    .registers 3

    .line 1562
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/app/ActivityOptions;->sendResultIgnoreErrors(Landroid/os/IRemoteCallback;Landroid/os/Bundle;)V

    .line 1563
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimationAbortListener:Landroid/os/IRemoteCallback;

    invoke-direct {p0, v0, v1}, Landroid/app/ActivityOptions;->sendResultIgnoreErrors(Landroid/os/IRemoteCallback;Landroid/os/Bundle;)V

    .line 1564
    return-void
.end method

.method public greylist-max-o canTaskOverlayResume()Z
    .registers 2

    .line 2022
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mTaskOverlayCanResume:Z

    return v0
.end method

.method public greylist-max-o disallowEnterPictureInPictureWhileLaunching()Z
    .registers 2

    .line 2075
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mDisallowEnterPictureInPictureWhileLaunching:Z

    return v0
.end method

.method public greylist-max-o forTargetActivity()Landroid/app/ActivityOptions;
    .registers 3

    .line 2696
    iget v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_e

    .line 2697
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 2698
    .local v0, "result":Landroid/app/ActivityOptions;
    invoke-virtual {v0, p0}, Landroid/app/ActivityOptions;->update(Landroid/app/ActivityOptions;)V

    .line 2699
    return-object v0

    .line 2702
    .end local v0    # "result":Landroid/app/ActivityOptions;
    :cond_e
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist freezeRecentTasksReordering()Z
    .registers 2

    .line 2059
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mFreezeRecentTasksReordering:Z

    return v0
.end method

.method public greylist-max-o getAnimSpecs()[Landroid/view/AppTransitionAnimationSpec;
    .registers 2

    .line 1591
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    return-object v0
.end method

.method public greylist-max-o getAnimationFinishedListener()Landroid/os/IRemoteCallback;
    .registers 2

    .line 1557
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    return-object v0
.end method

.method public blacklist getAnimationStartedListener()Landroid/os/IRemoteCallback;
    .registers 2

    .line 1552
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    return-object v0
.end method

.method public greylist-max-o getAnimationType()I
    .registers 2

    .line 1497
    iget v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    return v0
.end method

.method public greylist-max-o getAvoidMoveToFront()Z
    .registers 2

    .line 2041
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mAvoidMoveToFront:Z

    return v0
.end method

.method public blacklist getCallerDisplayId()I
    .registers 2

    .line 1792
    iget v0, p0, Landroid/app/ActivityOptions;->mCallerDisplayId:I

    return v0
.end method

.method public blacklist getCustomBackgroundColor()I
    .registers 2

    .line 1517
    iget v0, p0, Landroid/app/ActivityOptions;->mCustomBackgroundColor:I

    return v0
.end method

.method public greylist-max-o getCustomEnterResId()I
    .registers 2

    .line 1502
    iget v0, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    return v0
.end method

.method public greylist-max-o getCustomExitResId()I
    .registers 2

    .line 1507
    iget v0, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    return v0
.end method

.method public greylist-max-o getCustomInPlaceResId()I
    .registers 2

    .line 1512
    iget v0, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    return v0
.end method

.method public blacklist getDisableStartingWindow()Z
    .registers 2

    .line 1962
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mDisableStartingWindow:Z

    return v0
.end method

.method public blacklist getDismissKeyguardIfInsecure()Z
    .registers 2

    .line 2326
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mDismissKeyguardIfInsecure:Z

    return v0
.end method

.method public blacklist getFlexibleLaunchSize()Z
    .registers 2

    .line 2367
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mFlexibleLaunchSize:Z

    return v0
.end method

.method public greylist-max-o getHeight()I
    .registers 2

    .line 1547
    iget v0, p0, Landroid/app/ActivityOptions;->mHeight:I

    return v0
.end method

.method public greylist-max-o getLaunchActivityType()I
    .registers 2

    .line 1922
    iget v0, p0, Landroid/app/ActivityOptions;->mLaunchActivityType:I

    return v0
.end method

.method public whitelist getLaunchBounds()Landroid/graphics/Rect;
    .registers 2

    .line 1492
    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getLaunchCookie()Landroid/os/IBinder;
    .registers 2

    .line 2234
    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchCookie:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist getLaunchDisplayId()I
    .registers 2

    .line 1771
    iget v0, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    return v0
.end method

.method public blacklist getLaunchIntoPipParams()Landroid/app/PictureInPictureParams;
    .registers 2

    .line 1872
    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    return-object v0
.end method

.method public blacklist getLaunchRootTask()Landroid/window/WindowContainerToken;
    .registers 2

    .line 1832
    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    return-object v0
.end method

.method public greylist-max-o getLaunchTaskBehind()Z
    .registers 3

    .line 1335
    iget v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist getLaunchTaskDisplayArea()Landroid/window/WindowContainerToken;
    .registers 2

    .line 1803
    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayArea:Landroid/window/WindowContainerToken;

    return-object v0
.end method

.method public blacklist getLaunchTaskDisplayAreaFeatureId()I
    .registers 2

    .line 1815
    iget v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayAreaFeatureId:I

    return v0
.end method

.method public blacklist getLaunchTaskFragmentToken()Landroid/os/IBinder;
    .registers 2

    .line 1843
    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskFragmentToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist getLaunchTaskId()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1946
    iget v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    return v0
.end method

.method public greylist-max-o getLaunchWindowingMode()I
    .registers 2

    .line 1855
    iget v0, p0, Landroid/app/ActivityOptions;->mLaunchWindowingMode:I

    return v0
.end method

.method public blacklist getLaunchedFromBubble()Z
    .registers 2

    .line 2283
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mLaunchedFromBubble:Z

    return v0
.end method

.method public whitelist getLockTaskMode()Z
    .registers 2

    .line 1648
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    return v0
.end method

.method public blacklist getOverrideTaskTransition()Z
    .registers 2

    .line 2250
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mOverrideTaskTransition:Z

    return v0
.end method

.method public greylist-max-o getPackageName()Ljava/lang/String;
    .registers 2

    .line 1482
    iget-object v0, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPendingIntentBackgroundActivityStartMode()I
    .registers 2

    .line 2773
    invoke-super {p0}, Landroid/app/ComponentOptions;->getPendingIntentBackgroundActivityStartMode()I

    move-result v0

    return v0
.end method

.method public whitelist getPendingIntentCreatorBackgroundActivityStartMode()I
    .registers 2

    .line 2349
    iget v0, p0, Landroid/app/ActivityOptions;->mPendingIntentCreatorBackgroundActivityStartMode:I

    return v0
.end method

.method public blacklist getPendingIntentLaunchFlags()I
    .registers 3

    .line 1979
    iget v0, p0, Landroid/app/ActivityOptions;->mPendingIntentLaunchFlags:I

    const/high16 v1, 0x18000000

    and-int/2addr v0, v1

    return v0
.end method

.method public greylist-max-o getRemoteAnimationAdapter()Landroid/view/RemoteAnimationAdapter;
    .registers 2

    .line 1600
    iget-object v0, p0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    return-object v0
.end method

.method public blacklist getRemoteTransition()Landroid/window/RemoteTransition;
    .registers 2

    .line 1610
    iget-object v0, p0, Landroid/app/ActivityOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    return-object v0
.end method

.method public blacklist getRemoveWithTaskOranizer()Z
    .registers 2

    .line 2266
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mRemoveWithTaskOrganizer:Z

    return v0
.end method

.method public greylist-max-o getRotationAnimationHint()I
    .registers 2

    .line 2711
    iget v0, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    return v0
.end method

.method public blacklist getSceneTransitionInfo()Landroid/app/ActivityOptions$SceneTransitionInfo;
    .registers 2

    .line 1582
    iget-object v0, p0, Landroid/app/ActivityOptions;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    return-object v0
.end method

.method public blacklist getSourceInfo()Landroid/app/ActivityOptions$SourceInfo;
    .registers 2

    .line 2674
    iget-object v0, p0, Landroid/app/ActivityOptions;->mSourceInfo:Landroid/app/ActivityOptions$SourceInfo;

    return-object v0
.end method

.method public greylist-max-o getSpecsFuture()Landroid/view/IAppTransitionAnimationSpecsFuture;
    .registers 2

    .line 1595
    iget-object v0, p0, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    return-object v0
.end method

.method public whitelist getSplashScreenStyle()I
    .registers 2

    .line 1679
    iget v0, p0, Landroid/app/ActivityOptions;->mSplashScreenStyle:I

    return v0
.end method

.method public blacklist getSplashScreenThemeResName()Ljava/lang/String;
    .registers 2

    .line 1671
    iget-object v0, p0, Landroid/app/ActivityOptions;->mSplashScreenThemeResName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getStartX()I
    .registers 2

    .line 1532
    iget v0, p0, Landroid/app/ActivityOptions;->mStartX:I

    return v0
.end method

.method public greylist-max-o getStartY()I
    .registers 2

    .line 1537
    iget v0, p0, Landroid/app/ActivityOptions;->mStartY:I

    return v0
.end method

.method public blacklist getTaskAlwaysOnTop()Z
    .registers 2

    .line 1996
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mTaskAlwaysOnTop:Z

    return v0
.end method

.method public greylist-max-o getTaskOverlay()Z
    .registers 2

    .line 2015
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mTaskOverlay:Z

    return v0
.end method

.method public blacklist getThumbnail()Landroid/hardware/HardwareBuffer;
    .registers 2

    .line 1527
    iget-object v0, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public blacklist getTransientLaunch()Z
    .registers 2

    .line 2305
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mTransientLaunch:Z

    return v0
.end method

.method public greylist-max-o getUsageTimeReport()Landroid/app/PendingIntent;
    .registers 2

    .line 1587
    iget-object v0, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public greylist-max-o getWidth()I
    .registers 2

    .line 1542
    iget v0, p0, Landroid/app/ActivityOptions;->mWidth:I

    return v0
.end method

.method public whitelist isAllowPassThroughOnTouchOutside()Z
    .registers 2

    .line 1892
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mAllowPassThroughOnTouchOutside:Z

    return v0
.end method

.method public blacklist isApplyActivityFlagsForBubbles()Z
    .registers 2

    .line 2085
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mApplyActivityFlagsForBubbles:Z

    return v0
.end method

.method public blacklist isApplyMultipleTaskFlagForShortcut()Z
    .registers 2

    .line 2095
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mApplyMultipleTaskFlagForShortcut:Z

    return v0
.end method

.method public blacklist isApplyNoUserActionFlagForShortcut()Z
    .registers 2

    .line 2105
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mApplyNoUserActionFlagForShortcut:Z

    return v0
.end method

.method public blacklist isEligibleForLegacyPermissionPrompt()Z
    .registers 2

    .line 1703
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mIsEligibleForLegacyPermissionPrompt:Z

    return v0
.end method

.method public blacklist isLaunchIntoPip()Z
    .registers 2

    .line 1880
    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    .line 1881
    invoke-virtual {v0}, Landroid/app/PictureInPictureParams;->isLaunchIntoPip()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 1880
    :goto_f
    return v0
.end method

.method public whitelist isPendingIntentBackgroundActivityLaunchAllowed()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2797
    invoke-super {p0}, Landroid/app/ComponentOptions;->isPendingIntentBackgroundActivityLaunchAllowed()Z

    move-result v0

    return v0
.end method

.method public whitelist isShareIdentityEnabled()Z
    .registers 2

    .line 1662
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mShareIdentity:Z

    return v0
.end method

.method public greylist-max-o popAppVerificationBundle()Landroid/os/Bundle;
    .registers 3

    .line 2733
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAppVerificationBundle:Landroid/os/Bundle;

    .line 2734
    .local v0, "out":Landroid/os/Bundle;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/ActivityOptions;->mAppVerificationBundle:Landroid/os/Bundle;

    .line 2735
    return-object v0
.end method

.method public whitelist requestUsageTimeReport(Landroid/app/PendingIntent;)V
    .registers 2
    .param p1, "receiver"    # Landroid/app/PendingIntent;

    .line 2666
    iput-object p1, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    .line 2667
    return-void
.end method

.method public whitelist setAllowPassThroughOnTouchOutside(Z)V
    .registers 2
    .param p1, "allowed"    # Z

    .line 1917
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mAllowPassThroughOnTouchOutside:Z

    .line 1918
    return-void
.end method

.method public whitelist setAppVerificationBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;
    .registers 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 2745
    iput-object p1, p0, Landroid/app/ActivityOptions;->mAppVerificationBundle:Landroid/os/Bundle;

    .line 2746
    return-object p0
.end method

.method public blacklist setApplyActivityFlagsForBubbles(Z)V
    .registers 2
    .param p1, "apply"    # Z

    .line 2080
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mApplyActivityFlagsForBubbles:Z

    .line 2081
    return-void
.end method

.method public blacklist setApplyMultipleTaskFlagForShortcut(Z)V
    .registers 2
    .param p1, "apply"    # Z

    .line 2090
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mApplyMultipleTaskFlagForShortcut:Z

    .line 2091
    return-void
.end method

.method public blacklist setApplyNoUserActionFlagForShortcut(Z)V
    .registers 2
    .param p1, "apply"    # Z

    .line 2100
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mApplyNoUserActionFlagForShortcut:Z

    .line 2101
    return-void
.end method

.method public greylist-max-o setAvoidMoveToFront()V
    .registers 2

    .line 2032
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mAvoidMoveToFront:Z

    .line 2033
    return-void
.end method

.method public blacklist setCallerDisplayId(I)Landroid/app/ActivityOptions;
    .registers 2
    .param p1, "callerDisplayId"    # I

    .line 1797
    iput p1, p0, Landroid/app/ActivityOptions;->mCallerDisplayId:I

    .line 1798
    return-object p0
.end method

.method public blacklist setDisableStartingWindow(Z)V
    .registers 2
    .param p1, "disable"    # Z

    .line 1955
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mDisableStartingWindow:Z

    .line 1956
    return-void
.end method

.method public greylist-max-o setDisallowEnterPictureInPictureWhileLaunching(Z)V
    .registers 2
    .param p1, "disallow"    # Z

    .line 2070
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mDisallowEnterPictureInPictureWhileLaunching:Z

    .line 2071
    return-void
.end method

.method public blacklist setDismissKeyguardIfInsecure()V
    .registers 2

    .line 2317
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mDismissKeyguardIfInsecure:Z

    .line 2318
    return-void
.end method

.method public blacklist setEligibleForLegacyPermissionPrompt(Z)V
    .registers 2
    .param p1, "eligible"    # Z

    .line 1712
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mIsEligibleForLegacyPermissionPrompt:Z

    .line 1713
    return-void
.end method

.method public blacklist setFlexibleLaunchSize(Z)Landroid/app/ActivityOptions;
    .registers 2
    .param p1, "isFlexible"    # Z

    .line 2358
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mFlexibleLaunchSize:Z

    .line 2359
    return-object p0
.end method

.method public blacklist setFreezeRecentTasksReordering()V
    .registers 2

    .line 2051
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mFreezeRecentTasksReordering:Z

    .line 2052
    return-void
.end method

.method public blacklist setLaunchActivityType(I)V
    .registers 2
    .param p1, "activityType"    # I

    .line 1928
    iput p1, p0, Landroid/app/ActivityOptions;->mLaunchActivityType:I

    .line 1929
    return-void
.end method

.method public whitelist setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;
    .registers 3
    .param p1, "screenSpacePixelRect"    # Landroid/graphics/Rect;

    .line 1476
    if-eqz p1, :cond_8

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iput-object v0, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    .line 1477
    return-object p0
.end method

.method public blacklist setLaunchCookie(Landroid/app/ActivityOptions$LaunchCookie;)V
    .registers 3
    .param p1, "launchCookie"    # Landroid/app/ActivityOptions$LaunchCookie;

    .line 2214
    iget-object v0, p1, Landroid/app/ActivityOptions$LaunchCookie;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, v0}, Landroid/app/ActivityOptions;->setLaunchCookie(Landroid/os/IBinder;)V

    .line 2215
    return-void
.end method

.method public blacklist setLaunchCookie(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "launchCookie"    # Landroid/os/IBinder;

    .line 2225
    iput-object p1, p0, Landroid/app/ActivityOptions;->mLaunchCookie:Landroid/os/IBinder;

    .line 2226
    return-void
.end method

.method public whitelist setLaunchDisplayId(I)Landroid/app/ActivityOptions;
    .registers 2
    .param p1, "launchDisplayId"    # I

    .line 1786
    iput p1, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    .line 1787
    return-object p0
.end method

.method public blacklist setLaunchRootTask(Landroid/window/WindowContainerToken;)Landroid/app/ActivityOptions;
    .registers 2
    .param p1, "windowContainerToken"    # Landroid/window/WindowContainerToken;

    .line 1837
    iput-object p1, p0, Landroid/app/ActivityOptions;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    .line 1838
    return-object p0
.end method

.method public blacklist setLaunchTaskDisplayArea(Landroid/window/WindowContainerToken;)Landroid/app/ActivityOptions;
    .registers 2
    .param p1, "windowContainerToken"    # Landroid/window/WindowContainerToken;

    .line 1809
    iput-object p1, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayArea:Landroid/window/WindowContainerToken;

    .line 1810
    return-object p0
.end method

.method public blacklist setLaunchTaskDisplayAreaFeatureId(I)V
    .registers 2
    .param p1, "launchTaskDisplayAreaFeatureId"    # I

    .line 1827
    iput p1, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayAreaFeatureId:I

    .line 1828
    return-void
.end method

.method public blacklist setLaunchTaskFragmentToken(Landroid/os/IBinder;)Landroid/app/ActivityOptions;
    .registers 2
    .param p1, "taskFragmentToken"    # Landroid/os/IBinder;

    .line 1848
    iput-object p1, p0, Landroid/app/ActivityOptions;->mLaunchTaskFragmentToken:Landroid/os/IBinder;

    .line 1849
    return-object p0
.end method

.method public whitelist setLaunchTaskId(I)V
    .registers 2
    .param p1, "taskId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1938
    iput p1, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    .line 1939
    return-void
.end method

.method public blacklist setLaunchWindowingMode(I)V
    .registers 2
    .param p1, "windowingMode"    # I

    .line 1864
    iput p1, p0, Landroid/app/ActivityOptions;->mLaunchWindowingMode:I

    .line 1865
    return-void
.end method

.method public blacklist setLaunchedFromBubble(Z)V
    .registers 2
    .param p1, "fromBubble"    # Z

    .line 2275
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mLaunchedFromBubble:Z

    .line 2276
    return-void
.end method

.method public whitelist setLockTaskEnabled(Z)Landroid/app/ActivityOptions;
    .registers 2
    .param p1, "lockTaskMode"    # Z

    .line 1733
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    .line 1734
    return-object p0
.end method

.method public blacklist setOnAnimationAbortListener(Landroid/os/IRemoteCallback;)V
    .registers 2
    .param p1, "listener"    # Landroid/os/IRemoteCallback;

    .line 836
    iput-object p1, p0, Landroid/app/ActivityOptions;->mAnimationAbortListener:Landroid/os/IRemoteCallback;

    .line 837
    return-void
.end method

.method public blacklist setOnAnimationFinishedListener(Landroid/os/IRemoteCallback;)V
    .registers 2
    .param p1, "listener"    # Landroid/os/IRemoteCallback;

    .line 816
    iput-object p1, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    .line 817
    return-void
.end method

.method public blacklist setOverrideTaskTransition(Z)Landroid/app/ActivityOptions;
    .registers 2
    .param p1, "allowTaskOverride"    # Z

    .line 2244
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mOverrideTaskTransition:Z

    .line 2245
    return-object p0
.end method

.method public whitelist setPendingIntentBackgroundActivityLaunchAllowed(Z)V
    .registers 2
    .param p1, "allowed"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2785
    invoke-super {p0, p1}, Landroid/app/ComponentOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 2786
    return-void
.end method

.method public whitelist setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;
    .registers 2
    .param p1, "state"    # I

    .line 2762
    invoke-super {p0, p1}, Landroid/app/ComponentOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ComponentOptions;

    .line 2763
    return-object p0
.end method

.method public bridge synthetic blacklist setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ComponentOptions;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 82
    invoke-virtual {p0, p1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    move-result-object p1

    return-object p1
.end method

.method public whitelist setPendingIntentCreatorBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;
    .registers 2
    .param p1, "mode"    # I

    .line 2338
    iput p1, p0, Landroid/app/ActivityOptions;->mPendingIntentCreatorBackgroundActivityStartMode:I

    .line 2339
    return-object p0
.end method

.method public blacklist setPendingIntentLaunchFlags(I)V
    .registers 2
    .param p1, "flags"    # I

    .line 1971
    iput p1, p0, Landroid/app/ActivityOptions;->mPendingIntentLaunchFlags:I

    .line 1972
    return-void
.end method

.method public greylist-max-o setRemoteAnimationAdapter(Landroid/view/RemoteAnimationAdapter;)V
    .registers 2
    .param p1, "remoteAnimationAdapter"    # Landroid/view/RemoteAnimationAdapter;

    .line 1605
    iput-object p1, p0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 1606
    return-void
.end method

.method public blacklist setRemoteTransition(Landroid/window/RemoteTransition;)Landroid/app/ActivityOptions;
    .registers 2
    .param p1, "remoteTransition"    # Landroid/window/RemoteTransition;

    .line 1615
    iput-object p1, p0, Landroid/app/ActivityOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    .line 1616
    return-object p0
.end method

.method public blacklist setRemoveWithTaskOrganizer(Z)V
    .registers 2
    .param p1, "remove"    # Z

    .line 2258
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mRemoveWithTaskOrganizer:Z

    .line 2259
    return-void
.end method

.method public greylist-max-o setRotationAnimationHint(I)V
    .registers 2
    .param p1, "hint"    # I

    .line 2723
    iput p1, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    .line 2724
    return-void
.end method

.method public blacklist setSceneTransitionInfo(Landroid/app/ActivityOptions$SceneTransitionInfo;)Landroid/app/ActivityOptions;
    .registers 2
    .param p1, "info"    # Landroid/app/ActivityOptions$SceneTransitionInfo;

    .line 1576
    iput-object p1, p0, Landroid/app/ActivityOptions;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    .line 1577
    return-object p0
.end method

.method public whitelist setShareIdentityEnabled(Z)Landroid/app/ActivityOptions;
    .registers 2
    .param p1, "shareIdentity"    # Z

    .line 1760
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mShareIdentity:Z

    .line 1761
    return-object p0
.end method

.method public blacklist setSourceInfo(IJ)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "uptimeMillis"    # J

    .line 2688
    new-instance v0, Landroid/app/ActivityOptions$SourceInfo;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/ActivityOptions$SourceInfo;-><init>(IJ)V

    iput-object v0, p0, Landroid/app/ActivityOptions;->mSourceInfo:Landroid/app/ActivityOptions$SourceInfo;

    .line 2689
    return-void
.end method

.method public whitelist setSplashScreenStyle(I)Landroid/app/ActivityOptions;
    .registers 3
    .param p1, "style"    # I

    .line 1690
    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    if-nez p1, :cond_7

    .line 1692
    :cond_5
    iput p1, p0, Landroid/app/ActivityOptions;->mSplashScreenStyle:I

    .line 1694
    :cond_7
    return-object p0
.end method

.method public greylist setSplitScreenCreateMode(I)V
    .registers 2
    .param p1, "splitScreenCreateMode"    # I

    .line 2066
    return-void
.end method

.method public blacklist setTaskAlwaysOnTop(Z)V
    .registers 2
    .param p1, "alwaysOnTop"    # Z

    .line 1989
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mTaskAlwaysOnTop:Z

    .line 1990
    return-void
.end method

.method public blacklist setTaskOverlay(ZZ)V
    .registers 3
    .param p1, "taskOverlay"    # Z
    .param p2, "canResume"    # Z

    .line 2007
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mTaskOverlay:Z

    .line 2008
    iput-boolean p2, p0, Landroid/app/ActivityOptions;->mTaskOverlayCanResume:Z

    .line 2009
    return-void
.end method

.method public blacklist setTransientLaunch()Landroid/app/ActivityOptions;
    .registers 2

    .line 2295
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mTransientLaunch:Z

    .line 2296
    return-object p0
.end method

.method public whitelist toBundle()Landroid/os/Bundle;
    .registers 12

    .line 2443
    invoke-super {p0}, Landroid/app/ComponentOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 2444
    .local v0, "b":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 2445
    const-string v1, "android:activity.packageName"

    iget-object v2, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2447
    :cond_f
    iget-object v1, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_1a

    .line 2448
    const-string v1, "android:activity.launchBounds"

    iget-object v2, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2450
    :cond_1a
    iget v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_26

    .line 2451
    const-string v1, "android:activity.animType"

    iget v3, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2453
    :cond_26
    iget-object v1, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    if-eqz v1, :cond_31

    .line 2454
    const-string v1, "android:activity.usageTimeReport"

    iget-object v3, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2456
    :cond_31
    iget v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    const-string v3, "android:activity.animHeight"

    const-string v4, "android:activity.animWidth"

    const-string v5, "android:activity.animStartY"

    const-string v6, "android:activity.animStartX"

    const-string v7, "android:activity.animStartListener"

    const/4 v8, 0x0

    packed-switch v1, :pswitch_data_2d2

    :pswitch_41
    goto/16 :goto_d9

    .line 2465
    :pswitch_43
    const-string v1, "android:activity.animInPlaceRes"

    iget v3, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2466
    goto/16 :goto_d9

    .line 2496
    :pswitch_4c
    iget-object v1, p0, Landroid/app/ActivityOptions;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    if-eqz v1, :cond_d9

    .line 2497
    const-string v1, "android:activity.sceneTransitionInfo"

    iget-object v3, p0, Landroid/app/ActivityOptions;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_d9

    .line 2480
    :pswitch_59
    iget-object v1, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_79

    .line 2481
    iget-object v1, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    sget-object v9, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2482
    .local v1, "hwBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_72

    .line 2483
    const-string v9, "android:activity.animThumbnail"

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_79

    .line 2485
    :cond_72
    const-string v9, "ActivityOptions"

    const-string v10, "Failed to copy thumbnail"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2488
    .end local v1    # "hwBitmap":Landroid/graphics/Bitmap;
    :cond_79
    :goto_79
    iget v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2489
    iget v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2490
    iget v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2491
    iget v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2492
    nop

    .line 2493
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_99

    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    invoke-interface {v1}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_9a

    :cond_99
    move-object v1, v8

    .line 2492
    :goto_9a
    invoke-virtual {v0, v7, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2494
    goto :goto_d9

    .line 2469
    :pswitch_9e
    iget v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2470
    iget v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2471
    iget v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2472
    iget v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2473
    goto :goto_d9

    .line 2458
    :pswitch_b3
    const-string v1, "android:activity.animEnterRes"

    iget v3, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2459
    const-string v1, "android:activity.animExitRes"

    iget v3, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2460
    const-string v1, "android:activity.backgroundColor"

    iget v3, p0, Landroid/app/ActivityOptions;->mCustomBackgroundColor:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2461
    nop

    .line 2462
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_d4

    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    invoke-interface {v1}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_d5

    :cond_d4
    move-object v1, v8

    .line 2461
    :goto_d5
    invoke-virtual {v0, v7, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2463
    nop

    .line 2501
    :cond_d9
    :goto_d9
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    if-eqz v1, :cond_e4

    .line 2502
    const-string v1, "android:activity.lockTaskMode"

    iget-boolean v3, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2504
    :cond_e4
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mShareIdentity:Z

    if-eqz v1, :cond_ef

    .line 2505
    const-string v1, "android:activity.shareIdentity"

    iget-boolean v3, p0, Landroid/app/ActivityOptions;->mShareIdentity:Z

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2507
    :cond_ef
    iget v1, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    if-eq v1, v2, :cond_fa

    .line 2508
    const-string v1, "android.activity.launchDisplayId"

    iget v3, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2510
    :cond_fa
    iget v1, p0, Landroid/app/ActivityOptions;->mCallerDisplayId:I

    if-eq v1, v2, :cond_105

    .line 2511
    const-string v1, "android.activity.callerDisplayId"

    iget v3, p0, Landroid/app/ActivityOptions;->mCallerDisplayId:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2513
    :cond_105
    iget-object v1, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayArea:Landroid/window/WindowContainerToken;

    if-eqz v1, :cond_110

    .line 2514
    const-string v1, "android.activity.launchTaskDisplayAreaToken"

    iget-object v3, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayArea:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2516
    :cond_110
    iget v1, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayAreaFeatureId:I

    if-eq v1, v2, :cond_11b

    .line 2517
    const-string v1, "android.activity.launchTaskDisplayAreaFeatureId"

    iget v3, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayAreaFeatureId:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2519
    :cond_11b
    iget-object v1, p0, Landroid/app/ActivityOptions;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    if-eqz v1, :cond_126

    .line 2520
    const-string v1, "android.activity.launchRootTaskToken"

    iget-object v3, p0, Landroid/app/ActivityOptions;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2522
    :cond_126
    iget-object v1, p0, Landroid/app/ActivityOptions;->mLaunchTaskFragmentToken:Landroid/os/IBinder;

    if-eqz v1, :cond_131

    .line 2523
    const-string v1, "android.activity.launchTaskFragmentToken"

    iget-object v3, p0, Landroid/app/ActivityOptions;->mLaunchTaskFragmentToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2525
    :cond_131
    iget v1, p0, Landroid/app/ActivityOptions;->mLaunchWindowingMode:I

    if-eqz v1, :cond_13c

    .line 2526
    const-string v1, "android.activity.windowingMode"

    iget v3, p0, Landroid/app/ActivityOptions;->mLaunchWindowingMode:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2528
    :cond_13c
    iget v1, p0, Landroid/app/ActivityOptions;->mLaunchActivityType:I

    if-eqz v1, :cond_147

    .line 2529
    const-string v1, "android.activity.activityType"

    iget v3, p0, Landroid/app/ActivityOptions;->mLaunchActivityType:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2531
    :cond_147
    iget v1, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    if-eq v1, v2, :cond_152

    .line 2532
    const-string v1, "android.activity.launchTaskId"

    iget v3, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2534
    :cond_152
    iget v1, p0, Landroid/app/ActivityOptions;->mPendingIntentLaunchFlags:I

    if-eqz v1, :cond_15d

    .line 2535
    const-string v1, "android.activity.pendingIntentLaunchFlags"

    iget v3, p0, Landroid/app/ActivityOptions;->mPendingIntentLaunchFlags:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2537
    :cond_15d
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mTaskAlwaysOnTop:Z

    if-eqz v1, :cond_168

    .line 2538
    const-string v1, "android.activity.alwaysOnTop"

    iget-boolean v3, p0, Landroid/app/ActivityOptions;->mTaskAlwaysOnTop:Z

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2540
    :cond_168
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mTaskOverlay:Z

    if-eqz v1, :cond_173

    .line 2541
    const-string v1, "android.activity.taskOverlay"

    iget-boolean v3, p0, Landroid/app/ActivityOptions;->mTaskOverlay:Z

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2543
    :cond_173
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mTaskOverlayCanResume:Z

    if-eqz v1, :cond_17e

    .line 2544
    const-string v1, "android.activity.taskOverlayCanResume"

    iget-boolean v3, p0, Landroid/app/ActivityOptions;->mTaskOverlayCanResume:Z

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2546
    :cond_17e
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mAvoidMoveToFront:Z

    if-eqz v1, :cond_189

    .line 2547
    const-string v1, "android.activity.avoidMoveToFront"

    iget-boolean v3, p0, Landroid/app/ActivityOptions;->mAvoidMoveToFront:Z

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2549
    :cond_189
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mFreezeRecentTasksReordering:Z

    if-eqz v1, :cond_194

    .line 2550
    const-string v1, "android.activity.freezeRecentTasksReordering"

    iget-boolean v3, p0, Landroid/app/ActivityOptions;->mFreezeRecentTasksReordering:Z

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2552
    :cond_194
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mDisallowEnterPictureInPictureWhileLaunching:Z

    if-eqz v1, :cond_19f

    .line 2553
    const-string v1, "android:activity.disallowEnterPictureInPictureWhileLaunching"

    iget-boolean v3, p0, Landroid/app/ActivityOptions;->mDisallowEnterPictureInPictureWhileLaunching:Z

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2556
    :cond_19f
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mApplyActivityFlagsForBubbles:Z

    if-eqz v1, :cond_1aa

    .line 2557
    const-string v1, "android:activity.applyActivityFlagsForBubbles"

    iget-boolean v3, p0, Landroid/app/ActivityOptions;->mApplyActivityFlagsForBubbles:Z

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2559
    :cond_1aa
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mApplyMultipleTaskFlagForShortcut:Z

    if-eqz v1, :cond_1b5

    .line 2560
    const-string v1, "android:activity.applyMultipleTaskFlagForShortcut"

    iget-boolean v3, p0, Landroid/app/ActivityOptions;->mApplyMultipleTaskFlagForShortcut:Z

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2563
    :cond_1b5
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mApplyNoUserActionFlagForShortcut:Z

    if-eqz v1, :cond_1bf

    .line 2564
    const-string v1, "android:activity.applyNoUserActionFlagForShortcut"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2566
    :cond_1bf
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    if-eqz v1, :cond_1ca

    .line 2567
    const-string v1, "android:activity.animSpecs"

    iget-object v3, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 2569
    :cond_1ca
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_1d9

    .line 2570
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    invoke-interface {v1}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const-string v3, "android:activity.animationFinishedListener"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2572
    :cond_1d9
    iget-object v1, p0, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    if-eqz v1, :cond_1e8

    .line 2573
    iget-object v1, p0, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    invoke-interface {v1}, Landroid/view/IAppTransitionAnimationSpecsFuture;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const-string v3, "android:activity.specsFuture"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2575
    :cond_1e8
    iget-object v1, p0, Landroid/app/ActivityOptions;->mSourceInfo:Landroid/app/ActivityOptions$SourceInfo;

    if-eqz v1, :cond_1f3

    .line 2576
    const-string v1, "android.activity.sourceInfo"

    iget-object v3, p0, Landroid/app/ActivityOptions;->mSourceInfo:Landroid/app/ActivityOptions$SourceInfo;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2578
    :cond_1f3
    iget v1, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    if-eq v1, v2, :cond_1fe

    .line 2579
    const-string v1, "android:activity.rotationAnimationHint"

    iget v2, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2581
    :cond_1fe
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAppVerificationBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_209

    .line 2582
    const-string v1, "android:instantapps.installerbundle"

    iget-object v2, p0, Landroid/app/ActivityOptions;->mAppVerificationBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2584
    :cond_209
    iget-object v1, p0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    if-eqz v1, :cond_214

    .line 2585
    const-string v1, "android:activity.remoteAnimationAdapter"

    iget-object v2, p0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2587
    :cond_214
    iget-object v1, p0, Landroid/app/ActivityOptions;->mLaunchCookie:Landroid/os/IBinder;

    if-eqz v1, :cond_21f

    .line 2588
    const-string v1, "android.activity.launchCookie"

    iget-object v2, p0, Landroid/app/ActivityOptions;->mLaunchCookie:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2590
    :cond_21f
    iget-object v1, p0, Landroid/app/ActivityOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    if-eqz v1, :cond_22a

    .line 2591
    const-string v1, "android:activity.remoteTransition"

    iget-object v2, p0, Landroid/app/ActivityOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2593
    :cond_22a
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mOverrideTaskTransition:Z

    if-eqz v1, :cond_235

    .line 2594
    const-string v1, "android:activity.overrideTaskTransition"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mOverrideTaskTransition:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2596
    :cond_235
    iget-object v1, p0, Landroid/app/ActivityOptions;->mSplashScreenThemeResName:Ljava/lang/String;

    if-eqz v1, :cond_248

    iget-object v1, p0, Landroid/app/ActivityOptions;->mSplashScreenThemeResName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_248

    .line 2597
    const-string v1, "android.activity.splashScreenTheme"

    iget-object v2, p0, Landroid/app/ActivityOptions;->mSplashScreenThemeResName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2599
    :cond_248
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mRemoveWithTaskOrganizer:Z

    if-eqz v1, :cond_253

    .line 2600
    const-string v1, "android.activity.removeWithTaskOrganizer"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mRemoveWithTaskOrganizer:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2602
    :cond_253
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mLaunchedFromBubble:Z

    if-eqz v1, :cond_25e

    .line 2603
    const-string v1, "android.activity.launchTypeBubble"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mLaunchedFromBubble:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2605
    :cond_25e
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mTransientLaunch:Z

    if-eqz v1, :cond_269

    .line 2606
    const-string v1, "android.activity.transientLaunch"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mTransientLaunch:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2608
    :cond_269
    iget v1, p0, Landroid/app/ActivityOptions;->mSplashScreenStyle:I

    if-eqz v1, :cond_274

    .line 2609
    const-string v1, "android.activity.splashScreenStyle"

    iget v2, p0, Landroid/app/ActivityOptions;->mSplashScreenStyle:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2611
    :cond_274
    iget-object v1, p0, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    if-eqz v1, :cond_27f

    .line 2612
    const-string v1, "android.activity.launchIntoPipParams"

    iget-object v2, p0, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2614
    :cond_27f
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mIsEligibleForLegacyPermissionPrompt:Z

    if-eqz v1, :cond_28a

    .line 2615
    const-string v1, "android:activity.legacyPermissionPromptEligible"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mIsEligibleForLegacyPermissionPrompt:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2618
    :cond_28a
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mDismissKeyguardIfInsecure:Z

    if-eqz v1, :cond_295

    .line 2619
    const-string v1, "android.activity.dismissKeyguardIfInsecure"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mDismissKeyguardIfInsecure:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2621
    :cond_295
    iget v1, p0, Landroid/app/ActivityOptions;->mPendingIntentCreatorBackgroundActivityStartMode:I

    if-eqz v1, :cond_2a0

    .line 2623
    const-string v1, "android.activity.pendingIntentCreatorBackgroundActivityStartMode"

    iget v2, p0, Landroid/app/ActivityOptions;->mPendingIntentCreatorBackgroundActivityStartMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2626
    :cond_2a0
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mFlexibleLaunchSize:Z

    if-eqz v1, :cond_2ab

    .line 2627
    const-string v1, "android.activity.flexibleLaunchSize"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mFlexibleLaunchSize:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2629
    :cond_2ab
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mDisableStartingWindow:Z

    if-eqz v1, :cond_2b6

    .line 2630
    const-string v1, "android.activity.disableStarting"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mDisableStartingWindow:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2632
    :cond_2b6
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mAllowPassThroughOnTouchOutside:Z

    if-eqz v1, :cond_2c1

    .line 2633
    const-string v1, "android.activity.allowPassThroughOnTouchOutside"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mAllowPassThroughOnTouchOutside:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2636
    :cond_2c1
    nop

    .line 2637
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationAbortListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_2cc

    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationAbortListener:Landroid/os/IRemoteCallback;

    invoke-interface {v1}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 2636
    :cond_2cc
    const-string v1, "android:activity.animAbortListener"

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2638
    return-object v0

    :pswitch_data_2d2
    .packed-switch 0x1
        :pswitch_b3
        :pswitch_9e
        :pswitch_59
        :pswitch_59
        :pswitch_4c
        :pswitch_41
        :pswitch_41
        :pswitch_59
        :pswitch_59
        :pswitch_43
        :pswitch_9e
    .end packed-switch
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 2803
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityOptions("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), mPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAnimationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStartX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStartY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLaunchDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist update(Landroid/app/ActivityOptions;)V
    .registers 4
    .param p1, "otherOptions"    # Landroid/app/ActivityOptions;

    .line 2376
    iget-object v0, p1, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 2377
    iget-object v0, p1, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 2379
    :cond_8
    iget-object v0, p1, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    .line 2380
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityOptions;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    .line 2381
    iget v1, p1, Landroid/app/ActivityOptions;->mAnimationType:I

    iput v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 2382
    iget v1, p1, Landroid/app/ActivityOptions;->mAnimationType:I

    packed-switch v1, :pswitch_data_a0

    :pswitch_18
    goto :goto_75

    .line 2392
    :pswitch_19
    iget v1, p1, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    iput v1, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    .line 2393
    goto :goto_75

    .line 2415
    :pswitch_1e
    iget-object v1, p1, Landroid/app/ActivityOptions;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    .line 2416
    iput-object v0, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 2417
    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    goto :goto_75

    .line 2406
    :pswitch_27
    iget-object v1, p1, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 2407
    iget v1, p1, Landroid/app/ActivityOptions;->mStartX:I

    iput v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    .line 2408
    iget v1, p1, Landroid/app/ActivityOptions;->mStartY:I

    iput v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    .line 2409
    iget v1, p1, Landroid/app/ActivityOptions;->mWidth:I

    iput v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    .line 2410
    iget v1, p1, Landroid/app/ActivityOptions;->mHeight:I

    iput v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    .line 2411
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    invoke-direct {p0, v1, v0}, Landroid/app/ActivityOptions;->sendResultIgnoreErrors(Landroid/os/IRemoteCallback;Landroid/os/Bundle;)V

    .line 2412
    iget-object v1, p1, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 2413
    goto :goto_75

    .line 2395
    :pswitch_45
    iget v1, p1, Landroid/app/ActivityOptions;->mStartX:I

    iput v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    .line 2396
    iget v1, p1, Landroid/app/ActivityOptions;->mStartY:I

    iput v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    .line 2397
    iget v1, p1, Landroid/app/ActivityOptions;->mWidth:I

    iput v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    .line 2398
    iget v1, p1, Landroid/app/ActivityOptions;->mHeight:I

    iput v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    .line 2399
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    invoke-direct {p0, v1, v0}, Landroid/app/ActivityOptions;->sendResultIgnoreErrors(Landroid/os/IRemoteCallback;Landroid/os/Bundle;)V

    .line 2400
    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 2401
    goto :goto_75

    .line 2384
    :pswitch_5d
    iget v1, p1, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    iput v1, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    .line 2385
    iget v1, p1, Landroid/app/ActivityOptions;->mCustomExitResId:I

    iput v1, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    .line 2386
    iget v1, p1, Landroid/app/ActivityOptions;->mCustomBackgroundColor:I

    iput v1, p0, Landroid/app/ActivityOptions;->mCustomBackgroundColor:I

    .line 2387
    iput-object v0, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 2388
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    invoke-direct {p0, v1, v0}, Landroid/app/ActivityOptions;->sendResultIgnoreErrors(Landroid/os/IRemoteCallback;Landroid/os/Bundle;)V

    .line 2389
    iget-object v1, p1, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 2390
    nop

    .line 2420
    :goto_75
    iget-boolean v1, p1, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    .line 2421
    iget-boolean v1, p1, Landroid/app/ActivityOptions;->mShareIdentity:Z

    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mShareIdentity:Z

    .line 2422
    iget-object v1, p1, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    .line 2423
    iget-object v1, p1, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    .line 2424
    iget-object v1, p1, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 2425
    iget-object v1, p1, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 2426
    iget-object v1, p1, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    .line 2427
    iget-boolean v1, p1, Landroid/app/ActivityOptions;->mIsEligibleForLegacyPermissionPrompt:Z

    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mIsEligibleForLegacyPermissionPrompt:Z

    .line 2429
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationAbortListener:Landroid/os/IRemoteCallback;

    invoke-direct {p0, v1, v0}, Landroid/app/ActivityOptions;->sendResultIgnoreErrors(Landroid/os/IRemoteCallback;Landroid/os/Bundle;)V

    .line 2430
    iget-object v0, p1, Landroid/app/ActivityOptions;->mAnimationAbortListener:Landroid/os/IRemoteCallback;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationAbortListener:Landroid/os/IRemoteCallback;

    .line 2431
    return-void

    nop

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_5d
        :pswitch_45
        :pswitch_27
        :pswitch_27
        :pswitch_1e
        :pswitch_18
        :pswitch_18
        :pswitch_27
        :pswitch_27
        :pswitch_19
    .end packed-switch
.end method

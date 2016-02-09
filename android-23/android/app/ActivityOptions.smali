.class public Landroid/app/ActivityOptions;
.super Ljava/lang/Object;
.source "ActivityOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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

.field public static final KEY_ANIM_ENTER_RES_ID:Ljava/lang/String; = "android:activity.animEnterRes"

.field public static final KEY_ANIM_EXIT_RES_ID:Ljava/lang/String; = "android:activity.animExitRes"

.field public static final KEY_ANIM_HEIGHT:Ljava/lang/String; = "android:activity.animHeight"

.field public static final KEY_ANIM_IN_PLACE_RES_ID:Ljava/lang/String; = "android:activity.animInPlaceRes"

.field public static final KEY_ANIM_START_LISTENER:Ljava/lang/String; = "android:activity.animStartListener"

.field public static final KEY_ANIM_START_X:Ljava/lang/String; = "android:activity.animStartX"

.field public static final KEY_ANIM_START_Y:Ljava/lang/String; = "android:activity.animStartY"

.field public static final KEY_ANIM_THUMBNAIL:Ljava/lang/String; = "android:activity.animThumbnail"

.field public static final KEY_ANIM_TYPE:Ljava/lang/String; = "android:activity.animType"

.field public static final KEY_ANIM_WIDTH:Ljava/lang/String; = "android:activity.animWidth"

.field private static final KEY_EXIT_COORDINATOR_INDEX:Ljava/lang/String; = "android:activity.exitCoordinatorIndex"

.field public static final KEY_PACKAGE_NAME:Ljava/lang/String; = "android:activity.packageName"

.field private static final KEY_RESULT_CODE:Ljava/lang/String; = "android:activity.resultCode"

.field private static final KEY_RESULT_DATA:Ljava/lang/String; = "android:activity.resultData"

.field private static final KEY_TRANSITION_COMPLETE_LISTENER:Ljava/lang/String; = "android:activity.transitionCompleteListener"

.field private static final KEY_TRANSITION_IS_RETURNING:Ljava/lang/String; = "android:activity.transitionIsReturning"

.field private static final KEY_TRANSITION_SHARED_ELEMENTS:Ljava/lang/String; = "android:activity.sharedElementNames"

.field private static final KEY_USAGE_TIME_REPORT:Ljava/lang/String; = "android:activity.usageTimeReport"

.field private static final TAG:Ljava/lang/String; = "ActivityOptions"


# instance fields
.field private mAnimationStartedListener:Landroid/os/IRemoteCallback;

.field private mAnimationType:I

.field private mCustomEnterResId:I

.field private mCustomExitResId:I

.field private mCustomInPlaceResId:I

.field private mExitCoordinatorIndex:I

.field private mHeight:I

.field private mIsReturning:Z

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

.field private mThumbnail:Landroid/graphics/Bitmap;

.field private mTransitionReceiver:Landroid/os/ResultReceiver;

.field private mUsageTimeReport:Landroid/app/PendingIntent;

.field private mWidth:I


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 166
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@6
    .line 623
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "opts"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 166
    iput v2, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@6
    .line 628
    const-string/jumbo v1, "android:activity.packageName"

    #@9
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    iput-object v1, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    #@f
    .line 630
    :try_start_0
    const-string/jumbo v1, "android:activity.usageTimeReport"

    #@12
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Landroid/app/PendingIntent;

    #@18
    iput-object v1, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 634
    :goto_0
    const-string/jumbo v1, "android:activity.animType"

    #@1d
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@20
    move-result v1

    #@21
    iput v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@23
    .line 635
    iget v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@25
    packed-switch v1, :pswitch_data_0

    #@28
    .line 627
    :goto_1
    :pswitch_0
    return-void

    #@29
    .line 631
    :catch_0
    move-exception v0

    #@2a
    .line 632
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "ActivityOptions"

    #@2d
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    #@30
    goto :goto_0

    #@31
    .line 637
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :pswitch_1
    const-string/jumbo v1, "android:activity.animEnterRes"

    #@34
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@37
    move-result v1

    #@38
    iput v1, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    #@3a
    .line 638
    const-string/jumbo v1, "android:activity.animExitRes"

    #@3d
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@40
    move-result v1

    #@41
    iput v1, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    #@43
    .line 640
    const-string/jumbo v1, "android:activity.animStartListener"

    #@46
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    #@49
    move-result-object v1

    #@4a
    .line 639
    invoke-static {v1}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    #@4d
    move-result-object v1

    #@4e
    iput-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@50
    goto :goto_1

    #@51
    .line 644
    :pswitch_2
    const-string/jumbo v1, "android:activity.animInPlaceRes"

    #@54
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@57
    move-result v1

    #@58
    iput v1, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    #@5a
    goto :goto_1

    #@5b
    .line 649
    :pswitch_3
    const-string/jumbo v1, "android:activity.animStartX"

    #@5e
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@61
    move-result v1

    #@62
    iput v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    #@64
    .line 650
    const-string/jumbo v1, "android:activity.animStartY"

    #@67
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@6a
    move-result v1

    #@6b
    iput v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    #@6d
    .line 651
    const-string/jumbo v1, "android:activity.animWidth"

    #@70
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@73
    move-result v1

    #@74
    iput v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    #@76
    .line 652
    const-string/jumbo v1, "android:activity.animHeight"

    #@79
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@7c
    move-result v1

    #@7d
    iput v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    #@7f
    goto :goto_1

    #@80
    .line 659
    :pswitch_4
    const-string/jumbo v1, "android:activity.animThumbnail"

    #@83
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@86
    move-result-object v1

    #@87
    check-cast v1, Landroid/graphics/Bitmap;

    #@89
    iput-object v1, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    #@8b
    .line 660
    const-string/jumbo v1, "android:activity.animStartX"

    #@8e
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@91
    move-result v1

    #@92
    iput v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    #@94
    .line 661
    const-string/jumbo v1, "android:activity.animStartY"

    #@97
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@9a
    move-result v1

    #@9b
    iput v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    #@9d
    .line 662
    const-string/jumbo v1, "android:activity.animWidth"

    #@a0
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@a3
    move-result v1

    #@a4
    iput v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    #@a6
    .line 663
    const-string/jumbo v1, "android:activity.animHeight"

    #@a9
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@ac
    move-result v1

    #@ad
    iput v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    #@af
    .line 665
    const-string/jumbo v1, "android:activity.animStartListener"

    #@b2
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    #@b5
    move-result-object v1

    #@b6
    .line 664
    invoke-static {v1}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    #@b9
    move-result-object v1

    #@ba
    iput-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@bc
    goto/16 :goto_1

    #@be
    .line 669
    :pswitch_5
    const-string/jumbo v1, "android:activity.transitionCompleteListener"

    #@c1
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@c4
    move-result-object v1

    #@c5
    check-cast v1, Landroid/os/ResultReceiver;

    #@c7
    iput-object v1, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    #@c9
    .line 670
    const-string/jumbo v1, "android:activity.transitionIsReturning"

    #@cc
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@cf
    move-result v1

    #@d0
    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mIsReturning:Z

    #@d2
    .line 671
    const-string/jumbo v1, "android:activity.sharedElementNames"

    #@d5
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    #@d8
    move-result-object v1

    #@d9
    iput-object v1, p0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    #@db
    .line 672
    const-string/jumbo v1, "android:activity.resultData"

    #@de
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@e1
    move-result-object v1

    #@e2
    check-cast v1, Landroid/content/Intent;

    #@e4
    iput-object v1, p0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    #@e6
    .line 673
    const-string/jumbo v1, "android:activity.resultCode"

    #@e9
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@ec
    move-result v1

    #@ed
    iput v1, p0, Landroid/app/ActivityOptions;->mResultCode:I

    #@ef
    .line 674
    const-string/jumbo v1, "android:activity.exitCoordinatorIndex"

    #@f2
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@f5
    move-result v1

    #@f6
    iput v1, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    #@f8
    goto/16 :goto_1

    #@fa
    .line 635
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

.method public static abort(Landroid/os/Bundle;)V
    .locals 1
    .param p0, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 773
    if-eqz p0, :cond_0

    #@2
    .line 774
    new-instance v0, Landroid/app/ActivityOptions;

    #@4
    invoke-direct {v0, p0}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    #@7
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->abort()V

    #@a
    .line 772
    :cond_0
    return-void
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
    .line 481
    new-instance v0, Landroid/app/ActivityOptions;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    #@5
    .line 482
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
    .line 483
    if-eqz p8, :cond_0

    #@11
    const/16 v2, 0x8

    #@13
    :goto_0
    iput v2, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@15
    .line 485
    iput-object p1, v0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    #@17
    .line 486
    const/4 v2, 0x2

    #@18
    new-array v1, v2, [I

    #@1a
    .line 487
    .local v1, "pts":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    #@1d
    .line 488
    const/4 v2, 0x0

    #@1e
    aget v2, v1, v2

    #@20
    add-int/2addr v2, p2

    #@21
    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    #@23
    .line 489
    const/4 v2, 0x1

    #@24
    aget v2, v1, v2

    #@26
    add-int/2addr v2, p3

    #@27
    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    #@29
    .line 490
    iput p4, v0, Landroid/app/ActivityOptions;->mWidth:I

    #@2b
    .line 491
    iput p5, v0, Landroid/app/ActivityOptions;->mHeight:I

    #@2d
    .line 492
    invoke-direct {v0, p6, p7}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    #@30
    .line 493
    return-object v0

    #@31
    .line 484
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
    .line 614
    new-instance v0, Landroid/app/ActivityOptions;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    #@5
    .line 615
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
    .line 331
    new-instance v0, Landroid/app/ActivityOptions;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    #@5
    .line 332
    .local v0, "opts":Landroid/app/ActivityOptions;
    const/16 v2, 0xb

    #@7
    iput v2, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@9
    .line 333
    const/4 v2, 0x2

    #@a
    new-array v1, v2, [I

    #@c
    .line 334
    .local v1, "pts":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    #@f
    .line 335
    const/4 v2, 0x0

    #@10
    aget v2, v1, v2

    #@12
    add-int/2addr v2, p1

    #@13
    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    #@15
    .line 336
    const/4 v2, 0x1

    #@16
    aget v2, v1, v2

    #@18
    add-int/2addr v2, p2

    #@19
    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    #@1b
    .line 337
    iput p3, v0, Landroid/app/ActivityOptions;->mWidth:I

    #@1d
    .line 338
    iput p4, v0, Landroid/app/ActivityOptions;->mHeight:I

    #@1f
    .line 339
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
    .line 199
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
    .line 223
    new-instance v0, Landroid/app/ActivityOptions;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    #@5
    .line 224
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    #@b
    .line 225
    const/4 v1, 0x1

    #@c
    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@e
    .line 226
    iput p1, v0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    #@10
    .line 227
    iput p2, v0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    #@12
    .line 228
    invoke-direct {v0, p3, p4}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    #@15
    .line 229
    return-object v0
.end method

.method public static makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "animId"    # I

    #@0
    .prologue
    .line 245
    if-nez p1, :cond_0

    #@2
    .line 246
    new-instance v1, Ljava/lang/RuntimeException;

    #@4
    const-string/jumbo v2, "You must specify a valid animation."

    #@7
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 249
    :cond_0
    new-instance v0, Landroid/app/ActivityOptions;

    #@d
    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    #@10
    .line 250
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    #@16
    .line 251
    const/16 v1, 0xa

    #@18
    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@1a
    .line 252
    iput p1, v0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    #@1c
    .line 253
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
    .line 303
    new-instance v0, Landroid/app/ActivityOptions;

    #@3
    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    #@6
    .line 304
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
    .line 305
    iput v3, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@12
    .line 306
    new-array v1, v3, [I

    #@14
    .line 307
    .local v1, "pts":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    #@17
    .line 308
    const/4 v2, 0x0

    #@18
    aget v2, v1, v2

    #@1a
    add-int/2addr v2, p1

    #@1b
    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    #@1d
    .line 309
    const/4 v2, 0x1

    #@1e
    aget v2, v1, v2

    #@20
    add-int/2addr v2, p2

    #@21
    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    #@23
    .line 310
    iput p3, v0, Landroid/app/ActivityOptions;->mWidth:I

    #@25
    .line 311
    iput p4, v0, Landroid/app/ActivityOptions;->mHeight:I

    #@27
    .line 312
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
    .line 581
    .local p2, "sharedElementNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/app/ActivityOptions;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    #@5
    .line 582
    .local v0, "opts":Landroid/app/ActivityOptions;
    const/4 v1, 0x5

    #@6
    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@8
    .line 583
    iput-object p2, v0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    #@a
    .line 584
    iput-object p1, v0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    #@c
    .line 585
    const/4 v1, 0x1

    #@d
    iput-boolean v1, v0, Landroid/app/ActivityOptions;->mIsReturning:Z

    #@f
    .line 586
    iput p3, v0, Landroid/app/ActivityOptions;->mResultCode:I

    #@11
    .line 587
    iput-object p4, v0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    #@13
    .line 589
    iget-object v1, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    #@15
    invoke-virtual {v1, p1}, Landroid/app/ActivityTransitionState;->addExitTransitionCoordinator(Landroid/app/ExitTransitionCoordinator;)I

    #@18
    move-result v1

    #@19
    .line 588
    iput v1, v0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    #@1b
    .line 590
    return-object v0
.end method

.method public static makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "sharedElement"    # Landroid/view/View;
    .param p2, "sharedElementName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 517
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

    #@0
    .prologue
    .local p1, "sharedElements":[Landroid/util/Pair;, "[Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    const/4 v5, 0x0

    #@1
    .line 541
    new-instance v7, Landroid/app/ActivityOptions;

    #@3
    invoke-direct {v7}, Landroid/app/ActivityOptions;-><init>()V

    #@6
    .line 542
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
    .line 543
    const/4 v1, 0x6

    #@13
    iput v1, v7, Landroid/app/ActivityOptions;->mAnimationType:I

    #@15
    .line 544
    return-object v7

    #@16
    .line 546
    :cond_0
    const/4 v1, 0x5

    #@17
    iput v1, v7, Landroid/app/ActivityOptions;->mAnimationType:I

    #@19
    .line 548
    new-instance v2, Ljava/util/ArrayList;

    #@1b
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@1e
    .line 549
    .local v2, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    #@20
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@23
    .line 551
    .local v4, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p1, :cond_3

    #@25
    .line 552
    const/4 v6, 0x0

    #@26
    .local v6, "i":I
    :goto_0
    array-length v1, p1

    #@27
    if-ge v6, v1, :cond_3

    #@29
    .line 553
    aget-object v8, p1, v6

    #@2b
    .line 554
    .local v8, "sharedElement":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    iget-object v9, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@2d
    check-cast v9, Ljava/lang/String;

    #@2f
    .line 555
    .local v9, "sharedElementName":Ljava/lang/String;
    if-nez v9, :cond_1

    #@31
    .line 556
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@33
    const-string/jumbo v3, "Shared element name must not be null"

    #@36
    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@39
    throw v1

    #@3a
    .line 558
    :cond_1
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3d
    .line 559
    iget-object v10, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@3f
    check-cast v10, Landroid/view/View;

    #@41
    .line 560
    .local v10, "view":Landroid/view/View;
    if-nez v10, :cond_2

    #@43
    .line 561
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@45
    const-string/jumbo v3, "Shared element must not be null"

    #@48
    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v1

    #@4c
    .line 563
    :cond_2
    iget-object v1, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@4e
    check-cast v1, Landroid/view/View;

    #@50
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@53
    .line 552
    add-int/lit8 v6, v6, 0x1

    #@55
    goto :goto_0

    #@56
    .line 567
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
    .line 569
    .local v0, "exit":Landroid/app/ExitTransitionCoordinator;
    iput-object v0, v7, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    #@5f
    .line 570
    iput-object v2, v7, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    #@61
    .line 571
    iput-boolean v5, v7, Landroid/app/ActivityOptions;->mIsReturning:Z

    #@63
    .line 573
    iget-object v1, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    #@65
    invoke-virtual {v1, v0}, Landroid/app/ActivityTransitionState;->addExitTransitionCoordinator(Landroid/app/ExitTransitionCoordinator;)I

    #@68
    move-result v1

    #@69
    .line 572
    iput v1, v7, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    #@6b
    .line 574
    return-object v7
.end method

.method public static makeTaskLaunchBehind()Landroid/app/ActivityOptions;
    .locals 2

    #@0
    .prologue
    .line 604
    new-instance v0, Landroid/app/ActivityOptions;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    #@5
    .line 605
    .local v0, "opts":Landroid/app/ActivityOptions;
    const/4 v1, 0x7

    #@6
    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@8
    .line 606
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
    .line 414
    new-instance v0, Landroid/app/ActivityOptions;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    #@5
    .line 415
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
    .line 416
    if-eqz p5, :cond_0

    #@11
    const/4 v2, 0x3

    #@12
    :goto_0
    iput v2, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@14
    .line 417
    iput-object p1, v0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    #@16
    .line 418
    const/4 v2, 0x2

    #@17
    new-array v1, v2, [I

    #@19
    .line 419
    .local v1, "pts":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    #@1c
    .line 420
    const/4 v2, 0x0

    #@1d
    aget v2, v1, v2

    #@1f
    add-int/2addr v2, p2

    #@20
    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    #@22
    .line 421
    const/4 v2, 0x1

    #@23
    aget v2, v1, v2

    #@25
    add-int/2addr v2, p3

    #@26
    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    #@28
    .line 422
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    #@2b
    move-result-object v2

    #@2c
    invoke-direct {v0, v2, p4}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    #@2f
    .line 423
    return-object v0

    #@30
    .line 416
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
    .line 475
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
    .line 474
    invoke-static/range {v0 .. v8}, Landroid/app/ActivityOptions;->makeAspectScaledThumbnailAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;

    #@d
    move-result-object v0

    #@e
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
    .line 449
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
    .line 448
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
    .line 408
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
    .line 363
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
    .line 386
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

.method private setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    #@0
    .prologue
    .line 258
    if-eqz p2, :cond_0

    #@2
    .line 259
    move-object v1, p1

    #@3
    .line 260
    .local v1, "h":Landroid/os/Handler;
    move-object v0, p2

    #@4
    .line 261
    .local v0, "finalListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    new-instance v2, Landroid/app/ActivityOptions$1;

    #@6
    invoke-direct {v2, p0, v1, v0}, Landroid/app/ActivityOptions$1;-><init>(Landroid/app/ActivityOptions;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    #@9
    iput-object v2, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@b
    .line 257
    .end local v0    # "finalListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .end local v1    # "h":Landroid/os/Handler;
    :cond_0
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 3

    #@0
    .prologue
    .line 739
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 741
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@6
    const/4 v2, 0x0

    #@7
    invoke-interface {v1, v2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 738
    :cond_0
    :goto_0
    return-void

    #@b
    .line 742
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
    .line 951
    iget v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@2
    const/4 v2, 0x5

    #@3
    if-ne v1, v2, :cond_0

    #@5
    .line 952
    new-instance v0, Landroid/app/ActivityOptions;

    #@7
    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    #@a
    .line 953
    .local v0, "result":Landroid/app/ActivityOptions;
    invoke-virtual {v0, p0}, Landroid/app/ActivityOptions;->update(Landroid/app/ActivityOptions;)V

    #@d
    .line 954
    return-object v0

    #@e
    .line 957
    .end local v0    # "result":Landroid/app/ActivityOptions;
    :cond_0
    const/4 v1, 0x0

    #@f
    return-object v1
.end method

.method public getAnimationType()I
    .locals 1

    #@0
    .prologue
    .line 686
    iget v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@2
    return v0
.end method

.method public getCustomEnterResId()I
    .locals 1

    #@0
    .prologue
    .line 691
    iget v0, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    #@2
    return v0
.end method

.method public getCustomExitResId()I
    .locals 1

    #@0
    .prologue
    .line 696
    iget v0, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    #@2
    return v0
.end method

.method public getCustomInPlaceResId()I
    .locals 1

    #@0
    .prologue
    .line 701
    iget v0, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    #@2
    return v0
.end method

.method public getExitCoordinatorKey()I
    .locals 1

    #@0
    .prologue
    .line 735
    iget v0, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    #@2
    return v0
.end method

.method public getHeight()I
    .locals 1

    #@0
    .prologue
    .line 726
    iget v0, p0, Landroid/app/ActivityOptions;->mHeight:I

    #@2
    return v0
.end method

.method public getLaunchTaskBehind()Z
    .locals 2

    #@0
    .prologue
    .line 620
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

.method public getOnAnimationStartListener()Landroid/os/IRemoteCallback;
    .locals 1

    #@0
    .prologue
    .line 731
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@2
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 681
    iget-object v0, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    #@0
    .prologue
    .line 761
    iget v0, p0, Landroid/app/ActivityOptions;->mResultCode:I

    #@2
    return v0
.end method

.method public getResultData()Landroid/content/Intent;
    .locals 1

    #@0
    .prologue
    .line 764
    iget-object v0, p0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    #@2
    return-object v0
.end method

.method public getResultReceiver()Landroid/os/ResultReceiver;
    .locals 1

    #@0
    .prologue
    .line 758
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
    .line 754
    iget-object v0, p0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public getStartX()I
    .locals 1

    #@0
    .prologue
    .line 711
    iget v0, p0, Landroid/app/ActivityOptions;->mStartX:I

    #@2
    return v0
.end method

.method public getStartY()I
    .locals 1

    #@0
    .prologue
    .line 716
    iget v0, p0, Landroid/app/ActivityOptions;->mStartY:I

    #@2
    return v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    #@0
    .prologue
    .line 706
    iget-object v0, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    #@2
    return-object v0
.end method

.method public getUsageTimeReport()Landroid/app/PendingIntent;
    .locals 1

    #@0
    .prologue
    .line 768
    iget-object v0, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    #@2
    return-object v0
.end method

.method public getWidth()I
    .locals 1

    #@0
    .prologue
    .line 721
    iget v0, p0, Landroid/app/ActivityOptions;->mWidth:I

    #@2
    return v0
.end method

.method public isReturning()Z
    .locals 1

    #@0
    .prologue
    .line 749
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mIsReturning:Z

    #@2
    return v0
.end method

.method public requestUsageTimeReport(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "receiver"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 943
    iput-object p1, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    #@2
    .line 942
    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 863
    iget v2, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@3
    const/4 v3, 0x6

    #@4
    if-ne v2, v3, :cond_0

    #@6
    .line 864
    return-object v1

    #@7
    .line 866
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    #@9
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@c
    .line 867
    .local v0, "b":Landroid/os/Bundle;
    iget-object v2, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    #@e
    if-eqz v2, :cond_1

    #@10
    .line 868
    const-string/jumbo v2, "android:activity.packageName"

    #@13
    iget-object v3, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    #@15
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@18
    .line 870
    :cond_1
    const-string/jumbo v2, "android:activity.animType"

    #@1b
    iget v3, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@1d
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@20
    .line 871
    iget-object v2, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    #@22
    if-eqz v2, :cond_2

    #@24
    .line 872
    const-string/jumbo v2, "android:activity.usageTimeReport"

    #@27
    iget-object v3, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    #@29
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@2c
    .line 874
    :cond_2
    iget v2, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@2e
    packed-switch v2, :pswitch_data_0

    #@31
    .line 915
    :goto_0
    :pswitch_0
    return-object v0

    #@32
    .line 876
    :pswitch_1
    const-string/jumbo v2, "android:activity.animEnterRes"

    #@35
    iget v3, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    #@37
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@3a
    .line 877
    const-string/jumbo v2, "android:activity.animExitRes"

    #@3d
    iget v3, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    #@3f
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@42
    .line 878
    const-string/jumbo v2, "android:activity.animStartListener"

    #@45
    iget-object v3, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@47
    if-eqz v3, :cond_3

    #@49
    .line 879
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@4b
    invoke-interface {v1}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    #@4e
    move-result-object v1

    #@4f
    .line 878
    :cond_3
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    #@52
    goto :goto_0

    #@53
    .line 882
    :pswitch_2
    const-string/jumbo v1, "android:activity.animInPlaceRes"

    #@56
    iget v2, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    #@58
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@5b
    goto :goto_0

    #@5c
    .line 886
    :pswitch_3
    const-string/jumbo v1, "android:activity.animStartX"

    #@5f
    iget v2, p0, Landroid/app/ActivityOptions;->mStartX:I

    #@61
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@64
    .line 887
    const-string/jumbo v1, "android:activity.animStartY"

    #@67
    iget v2, p0, Landroid/app/ActivityOptions;->mStartY:I

    #@69
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@6c
    .line 888
    const-string/jumbo v1, "android:activity.animWidth"

    #@6f
    iget v2, p0, Landroid/app/ActivityOptions;->mWidth:I

    #@71
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@74
    .line 889
    const-string/jumbo v1, "android:activity.animHeight"

    #@77
    iget v2, p0, Landroid/app/ActivityOptions;->mHeight:I

    #@79
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@7c
    goto :goto_0

    #@7d
    .line 895
    :pswitch_4
    const-string/jumbo v2, "android:activity.animThumbnail"

    #@80
    iget-object v3, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    #@82
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@85
    .line 896
    const-string/jumbo v2, "android:activity.animStartX"

    #@88
    iget v3, p0, Landroid/app/ActivityOptions;->mStartX:I

    #@8a
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@8d
    .line 897
    const-string/jumbo v2, "android:activity.animStartY"

    #@90
    iget v3, p0, Landroid/app/ActivityOptions;->mStartY:I

    #@92
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@95
    .line 898
    const-string/jumbo v2, "android:activity.animWidth"

    #@98
    iget v3, p0, Landroid/app/ActivityOptions;->mWidth:I

    #@9a
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@9d
    .line 899
    const-string/jumbo v2, "android:activity.animHeight"

    #@a0
    iget v3, p0, Landroid/app/ActivityOptions;->mHeight:I

    #@a2
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@a5
    .line 900
    const-string/jumbo v2, "android:activity.animStartListener"

    #@a8
    iget-object v3, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@aa
    if-eqz v3, :cond_4

    #@ac
    .line 901
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@ae
    invoke-interface {v1}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    #@b1
    move-result-object v1

    #@b2
    .line 900
    :cond_4
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    #@b5
    goto/16 :goto_0

    #@b7
    .line 904
    :pswitch_5
    iget-object v1, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    #@b9
    if-eqz v1, :cond_5

    #@bb
    .line 905
    const-string/jumbo v1, "android:activity.transitionCompleteListener"

    #@be
    iget-object v2, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    #@c0
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@c3
    .line 907
    :cond_5
    const-string/jumbo v1, "android:activity.transitionIsReturning"

    #@c6
    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mIsReturning:Z

    #@c8
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@cb
    .line 908
    const-string/jumbo v1, "android:activity.sharedElementNames"

    #@ce
    iget-object v2, p0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    #@d0
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@d3
    .line 909
    const-string/jumbo v1, "android:activity.resultData"

    #@d6
    iget-object v2, p0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    #@d8
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@db
    .line 910
    const-string/jumbo v1, "android:activity.resultCode"

    #@de
    iget v2, p0, Landroid/app/ActivityOptions;->mResultCode:I

    #@e0
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@e3
    .line 911
    const-string/jumbo v1, "android:activity.exitCoordinatorIndex"

    #@e6
    iget v2, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    #@e8
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@eb
    goto/16 :goto_0

    #@ed
    .line 874
    nop

    #@ee
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

.method public update(Landroid/app/ActivityOptions;)V
    .locals 4
    .param p1, "otherOptions"    # Landroid/app/ActivityOptions;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 784
    iget-object v1, p1, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 785
    iget-object v1, p1, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    #@8
    iput-object v1, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    #@a
    .line 787
    :cond_0
    iget-object v1, p1, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    #@c
    iput-object v1, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    #@e
    .line 788
    iput-object v3, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    #@10
    .line 789
    iput-object v3, p0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    #@12
    .line 790
    iput-boolean v2, p0, Landroid/app/ActivityOptions;->mIsReturning:Z

    #@14
    .line 791
    iput-object v3, p0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    #@16
    .line 792
    iput v2, p0, Landroid/app/ActivityOptions;->mResultCode:I

    #@18
    .line 793
    iput v2, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    #@1a
    .line 794
    iget v1, p1, Landroid/app/ActivityOptions;->mAnimationType:I

    #@1c
    iput v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    #@1e
    .line 795
    iget v1, p1, Landroid/app/ActivityOptions;->mAnimationType:I

    #@20
    packed-switch v1, :pswitch_data_0

    #@23
    .line 783
    :goto_0
    :pswitch_0
    return-void

    #@24
    .line 797
    :pswitch_1
    iget v1, p1, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    #@26
    iput v1, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    #@28
    .line 798
    iget v1, p1, Landroid/app/ActivityOptions;->mCustomExitResId:I

    #@2a
    iput v1, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    #@2c
    .line 799
    iput-object v3, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    #@2e
    .line 800
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@30
    if-eqz v1, :cond_1

    #@32
    .line 802
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@34
    const/4 v2, 0x0

    #@35
    invoke-interface {v1, v2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    #@38
    .line 806
    :cond_1
    :goto_1
    iget-object v1, p1, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@3a
    iput-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@3c
    goto :goto_0

    #@3d
    .line 809
    :pswitch_2
    iget v1, p1, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    #@3f
    iput v1, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    #@41
    goto :goto_0

    #@42
    .line 812
    :pswitch_3
    iget v1, p1, Landroid/app/ActivityOptions;->mStartX:I

    #@44
    iput v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    #@46
    .line 813
    iget v1, p1, Landroid/app/ActivityOptions;->mStartY:I

    #@48
    iput v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    #@4a
    .line 814
    iget v1, p1, Landroid/app/ActivityOptions;->mWidth:I

    #@4c
    iput v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    #@4e
    .line 815
    iget v1, p1, Landroid/app/ActivityOptions;->mHeight:I

    #@50
    iput v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    #@52
    .line 816
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@54
    if-eqz v1, :cond_2

    #@56
    .line 818
    :try_start_1
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@58
    const/4 v2, 0x0

    #@59
    invoke-interface {v1, v2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@5c
    .line 822
    :cond_2
    :goto_2
    iput-object v3, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@5e
    goto :goto_0

    #@5f
    .line 828
    :pswitch_4
    iget-object v1, p1, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    #@61
    iput-object v1, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    #@63
    .line 829
    iget v1, p1, Landroid/app/ActivityOptions;->mStartX:I

    #@65
    iput v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    #@67
    .line 830
    iget v1, p1, Landroid/app/ActivityOptions;->mStartY:I

    #@69
    iput v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    #@6b
    .line 831
    iget v1, p1, Landroid/app/ActivityOptions;->mWidth:I

    #@6d
    iput v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    #@6f
    .line 832
    iget v1, p1, Landroid/app/ActivityOptions;->mHeight:I

    #@71
    iput v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    #@73
    .line 833
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@75
    if-eqz v1, :cond_3

    #@77
    .line 835
    :try_start_2
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@79
    const/4 v2, 0x0

    #@7a
    invoke-interface {v1, v2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@7d
    .line 839
    :cond_3
    :goto_3
    iget-object v1, p1, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@7f
    iput-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@81
    goto :goto_0

    #@82
    .line 842
    :pswitch_5
    iget-object v1, p1, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    #@84
    iput-object v1, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    #@86
    .line 843
    iget-object v1, p1, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    #@88
    iput-object v1, p0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    #@8a
    .line 844
    iget-boolean v1, p1, Landroid/app/ActivityOptions;->mIsReturning:Z

    #@8c
    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mIsReturning:Z

    #@8e
    .line 845
    iput-object v3, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    #@90
    .line 846
    iput-object v3, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    #@92
    .line 847
    iget-object v1, p1, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    #@94
    iput-object v1, p0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    #@96
    .line 848
    iget v1, p1, Landroid/app/ActivityOptions;->mResultCode:I

    #@98
    iput v1, p0, Landroid/app/ActivityOptions;->mResultCode:I

    #@9a
    .line 849
    iget v1, p1, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    #@9c
    iput v1, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    #@9e
    goto :goto_0

    #@9f
    .line 836
    :catch_0
    move-exception v0

    #@a0
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_3

    #@a1
    .line 819
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    #@a2
    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_2

    #@a3
    .line 803
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v0

    #@a4
    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1

    #@a5
    .line 795
    nop

    #@a6
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

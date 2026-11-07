.class public Lcom/android/internal/app/PlatLogoActivity;
.super Landroid/app/Activity;
.source "PlatLogoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/PlatLogoActivity$RumblePack;,
        Lcom/android/internal/app/PlatLogoActivity$Starfield;
    }
.end annotation


# static fields
.field private static final blacklist EGG_UNLOCK_SETTING:Ljava/lang/String; = "egg_mode_v"

.field private static final blacklist FINISH_AFTER_NEXT_STAGE_LAUNCH:Z = false

.field private static final blacklist LAUNCH_TIME:J = 0x1388L

.field private static final blacklist MAX_WARP:F = 16.0f

.field private static final blacklist MIN_WARP:F = 1.0f

.field private static final blacklist TAG:Ljava/lang/String; = "PlatLogoActivity"

.field static final blacklist TOUCH_STATS:Ljava/lang/String; = "touch.stats"


# instance fields
.field private blacklist mAnim:Landroid/animation/TimeAnimator;

.field private blacklist mAnimationsEnabled:Z

.field private blacklist mDp:F

.field private final blacklist mLaunchNextStage:Ljava/lang/Runnable;

.field private blacklist mLayout:Landroid/widget/FrameLayout;

.field private blacklist mLogo:Landroid/widget/ImageView;

.field blacklist mPressureMax:D

.field blacklist mPressureMin:D

.field private blacklist mRandom:Ljava/util/Random;

.field private blacklist mRumble:Lcom/android/internal/app/PlatLogoActivity$RumblePack;

.field private blacklist mStarfield:Lcom/android/internal/app/PlatLogoActivity$Starfield;

.field private final blacklist mTimeListener:Landroid/animation/TimeAnimator$TimeListener;

.field private final blacklist mTouchListener:Landroid/view/View$OnTouchListener;

.field private blacklist mWarpAnim:Landroid/animation/ObjectAnimator;


# direct methods
.method public static synthetic blacklist $r8$lambda$wbKTaG16WQKpYZ4PXk5h-5rIBZo(Lcom/android/internal/app/PlatLogoActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/PlatLogoActivity;->lambda$new$0()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAnimationsEnabled(Lcom/android/internal/app/PlatLogoActivity;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/app/PlatLogoActivity;->mAnimationsEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDp(Lcom/android/internal/app/PlatLogoActivity;)F
    .registers 1

    iget p0, p0, Lcom/android/internal/app/PlatLogoActivity;->mDp:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLayout(Lcom/android/internal/app/PlatLogoActivity;)Landroid/widget/FrameLayout;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/PlatLogoActivity;->mLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLogo(Lcom/android/internal/app/PlatLogoActivity;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/PlatLogoActivity;->mLogo:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRandom(Lcom/android/internal/app/PlatLogoActivity;)Ljava/util/Random;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/PlatLogoActivity;->mRandom:Ljava/util/Random;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRumble(Lcom/android/internal/app/PlatLogoActivity;)Lcom/android/internal/app/PlatLogoActivity$RumblePack;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/PlatLogoActivity;->mRumble:Lcom/android/internal/app/PlatLogoActivity$RumblePack;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStarfield(Lcom/android/internal/app/PlatLogoActivity;)Lcom/android/internal/app/PlatLogoActivity$Starfield;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/PlatLogoActivity;->mStarfield:Lcom/android/internal/app/PlatLogoActivity$Starfield;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mmeasureTouchPressure(Lcom/android/internal/app/PlatLogoActivity;Landroid/view/MotionEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/PlatLogoActivity;->measureTouchPressure(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartWarp(Lcom/android/internal/app/PlatLogoActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/PlatLogoActivity;->startWarp()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstopWarp(Lcom/android/internal/app/PlatLogoActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/PlatLogoActivity;->stopWarp()V

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 72
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mAnimationsEnabled:Z

    .line 97
    new-instance v0, Lcom/android/internal/app/PlatLogoActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/PlatLogoActivity$1;-><init>(Lcom/android/internal/app/PlatLogoActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 115
    new-instance v0, Lcom/android/internal/app/PlatLogoActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/internal/app/PlatLogoActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/PlatLogoActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mLaunchNextStage:Ljava/lang/Runnable;

    .line 120
    new-instance v0, Lcom/android/internal/app/PlatLogoActivity$2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/PlatLogoActivity$2;-><init>(Lcom/android/internal/app/PlatLogoActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mTimeListener:Landroid/animation/TimeAnimator$TimeListener;

    .line 348
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMin:D

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMax:D

    return-void
.end method

.method private synthetic blacklist lambda$new$0()V
    .registers 2

    .line 116
    invoke-direct {p0}, Lcom/android/internal/app/PlatLogoActivity;->stopWarp()V

    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/app/PlatLogoActivity;->launchNextStage(Z)V

    .line 118
    return-void
.end method

.method private blacklist launchNextStage(Z)V
    .registers 7
    .param p1, "locked"    # Z

    .line 319
    const-string v0, "PlatLogoActivity"

    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 321
    .local v1, "cr":Landroid/content/ContentResolver;
    :try_start_6
    invoke-direct {p0}, Lcom/android/internal/app/PlatLogoActivity;->shouldWriteSettings()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Saving egg locked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-direct {p0}, Lcom/android/internal/app/PlatLogoActivity;->syncTouchPressure()V

    .line 324
    const-string v2, "egg_mode_v"

    .line 326
    if-eqz p1, :cond_2c

    const-wide/16 v3, 0x0

    goto :goto_30

    :cond_2c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 324
    :goto_30
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    :try_end_33
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_33} :catch_34

    .line 330
    :cond_33
    goto :goto_3a

    .line 328
    :catch_34
    move-exception v2

    .line 329
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "Can\'t write settings"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 333
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_3a
    :try_start_3a
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 334
    const v3, 0x10008000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.android.internal.category.PLATLOGO"

    .line 336
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 337
    .local v2, "eggActivity":Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "launching: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-virtual {p0, v2}, Lcom/android/internal/app/PlatLogoActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_67
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3a .. :try_end_67} :catch_68

    .line 341
    .end local v2    # "eggActivity":Landroid/content/Intent;
    goto :goto_70

    .line 339
    :catch_68
    move-exception v0

    .line 340
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string v2, "com.android.internal.app.PlatLogoActivity"

    const-string v3, "No more eggs."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    .end local v0    # "ex":Landroid/content/ActivityNotFoundException;
    :goto_70
    return-void
.end method

.method private blacklist measureTouchPressure(Landroid/view/MotionEvent;)V
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 351
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v0

    .line 352
    .local v0, "pressure":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_30

    :pswitch_b
    goto :goto_2e

    .line 359
    :pswitch_c
    float-to-double v1, v0

    iget-wide v3, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMin:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_16

    float-to-double v1, v0

    iput-wide v1, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMin:D

    .line 360
    :cond_16
    float-to-double v1, v0

    iget-wide v3, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMax:D

    cmpl-double v1, v1, v3

    if-lez v1, :cond_2e

    float-to-double v1, v0

    iput-wide v1, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMax:D

    goto :goto_2e

    .line 354
    :pswitch_21
    iget-wide v1, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMax:D

    const-wide/16 v3, 0x0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_2e

    .line 355
    float-to-double v1, v0

    iput-wide v1, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMax:D

    iput-wide v1, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMin:D

    .line 363
    :cond_2e
    :goto_2e
    return-void

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_21
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private blacklist shouldWriteSettings()Z
    .registers 3

    .line 315
    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private blacklist startAnimating()V
    .registers 3

    .line 252
    new-instance v0, Landroid/animation/TimeAnimator;

    invoke-direct {v0}, Landroid/animation/TimeAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mAnim:Landroid/animation/TimeAnimator;

    .line 253
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mAnim:Landroid/animation/TimeAnimator;

    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity;->mTimeListener:Landroid/animation/TimeAnimator$TimeListener;

    invoke-virtual {v0, v1}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    .line 254
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mAnim:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->start()V

    .line 255
    return-void
.end method

.method private blacklist startWarp()V
    .registers 5

    .line 283
    invoke-direct {p0}, Lcom/android/internal/app/PlatLogoActivity;->stopWarp()V

    .line 284
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mStarfield:Lcom/android/internal/app/PlatLogoActivity$Starfield;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_2a

    const-string/jumbo v2, "warp"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 285
    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mWarpAnim:Landroid/animation/ObjectAnimator;

    .line 286
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mWarpAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 288
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mLogo:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity;->mLaunchNextStage:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 289
    return-void

    nop

    :array_2a
    .array-data 4
        0x3f800000    # 1.0f
        0x41800000    # 16.0f
    .end array-data
.end method

.method private blacklist stopAnimating()V
    .registers 2

    .line 258
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mAnim:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->cancel()V

    .line 259
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mAnim:Landroid/animation/TimeAnimator;

    .line 260
    return-void
.end method

.method private blacklist stopWarp()V
    .registers 3

    .line 292
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mWarpAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_11

    .line 293
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mWarpAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 294
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mWarpAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 295
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mWarpAnim:Landroid/animation/ObjectAnimator;

    .line 297
    :cond_11
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mStarfield:Lcom/android/internal/app/PlatLogoActivity$Starfield;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/internal/app/PlatLogoActivity$Starfield;->setWarp(F)V

    .line 298
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mLogo:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity;->mLaunchNextStage:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 299
    return-void
.end method

.method private blacklist syncTouchPressure()V
    .registers 10

    .line 367
    const-string/jumbo v0, "touch.stats"

    const-string v1, "max"

    const-string v2, "min"

    .line 368
    :try_start_7
    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 367
    invoke-static {v3, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 369
    .local v3, "touchDataJson":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    .line 370
    if-eqz v3, :cond_15

    move-object v5, v3

    goto :goto_18

    :cond_15
    const-string/jumbo v5, "{}"

    :goto_18
    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 371
    .local v4, "touchData":Lorg/json/JSONObject;
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 372
    iget-wide v5, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMin:D

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMin:D

    .line 374
    :cond_2d
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 375
    iget-wide v5, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMax:D

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMax:D

    .line 377
    :cond_3f
    iget-wide v5, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMax:D

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-ltz v5, :cond_62

    .line 378
    iget-wide v5, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMin:D

    invoke-virtual {v4, v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 379
    iget-wide v5, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMax:D

    invoke-virtual {v4, v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 380
    invoke-direct {p0}, Lcom/android/internal/app/PlatLogoActivity;->shouldWriteSettings()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 381
    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 382
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 381
    invoke-static {v1, v0, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_62} :catch_63

    .line 387
    .end local v3    # "touchDataJson":Ljava/lang/String;
    .end local v4    # "touchData":Lorg/json/JSONObject;
    :cond_62
    goto :goto_6b

    .line 385
    :catch_63
    move-exception v0

    .line 386
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "com.android.internal.app.PlatLogoActivity"

    const-string v2, "Can\'t write touch settings"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 388
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6b
    return-void
.end method


# virtual methods
.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 202
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 204
    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 205
    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 206
    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 207
    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/view/WindowInsetsController;->hide(I)V

    .line 210
    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/Window;->setColorMode(I)V

    .line 212
    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 213
    .local v0, "ab":Landroid/app/ActionBar;
    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 216
    :cond_3d
    const/4 v2, 0x1

    :try_start_3e
    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "animator_duration_scale"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4e

    move v1, v2

    :cond_4e
    iput-boolean v1, p0, Lcom/android/internal/app/PlatLogoActivity;->mAnimationsEnabled:Z
    :try_end_50
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3e .. :try_end_50} :catch_51

    .line 220
    goto :goto_54

    .line 218
    :catch_51
    move-exception v1

    .line 219
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    iput-boolean v2, p0, Lcom/android/internal/app/PlatLogoActivity;->mAnimationsEnabled:Z

    .line 222
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_54
    new-instance v1, Lcom/android/internal/app/PlatLogoActivity$RumblePack;

    invoke-direct {v1, p0}, Lcom/android/internal/app/PlatLogoActivity$RumblePack;-><init>(Lcom/android/internal/app/PlatLogoActivity;)V

    iput-object v1, p0, Lcom/android/internal/app/PlatLogoActivity;->mRumble:Lcom/android/internal/app/PlatLogoActivity$RumblePack;

    .line 224
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/app/PlatLogoActivity;->mLayout:Landroid/widget/FrameLayout;

    .line 225
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/PlatLogoActivity;->mRandom:Ljava/util/Random;

    .line 226
    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/android/internal/app/PlatLogoActivity;->mDp:F

    .line 227
    new-instance v1, Lcom/android/internal/app/PlatLogoActivity$Starfield;

    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity;->mRandom:Ljava/util/Random;

    iget v3, p0, Lcom/android/internal/app/PlatLogoActivity;->mDp:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    invoke-direct {v1, v2, v3}, Lcom/android/internal/app/PlatLogoActivity$Starfield;-><init>(Ljava/util/Random;F)V

    iput-object v1, p0, Lcom/android/internal/app/PlatLogoActivity;->mStarfield:Lcom/android/internal/app/PlatLogoActivity$Starfield;

    .line 228
    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity;->mStarfield:Lcom/android/internal/app/PlatLogoActivity$Starfield;

    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity;->mRandom:Ljava/util/Random;

    .line 229
    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v2, v3

    const/high16 v4, 0x43480000    # 200.0f

    mul-float/2addr v2, v4

    iget-object v5, p0, Lcom/android/internal/app/PlatLogoActivity;->mRandom:Ljava/util/Random;

    .line 230
    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v5

    sub-float/2addr v5, v3

    mul-float/2addr v5, v4

    .line 228
    invoke-virtual {v1, v2, v5}, Lcom/android/internal/app/PlatLogoActivity$Starfield;->setVelocity(FF)V

    .line 231
    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity;->mLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity;->mStarfield:Lcom/android/internal/app/PlatLogoActivity$Starfield;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 233
    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 234
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    .line 235
    .local v2, "dp":F
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 236
    .local v3, "minSide":I
    int-to-double v4, v3

    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v4, v6

    double-to-int v4, v4

    .line 237
    .local v4, "widgetSize":I
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 238
    .local v5, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v6, 0x11

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 240
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/internal/app/PlatLogoActivity;->mLogo:Landroid/widget/ImageView;

    .line 241
    iget-object v6, p0, Lcom/android/internal/app/PlatLogoActivity;->mLogo:Landroid/widget/ImageView;

    const v7, 0x108075f

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 242
    iget-object v6, p0, Lcom/android/internal/app/PlatLogoActivity;->mLogo:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/internal/app/PlatLogoActivity;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 243
    iget-object v6, p0, Lcom/android/internal/app/PlatLogoActivity;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->requestFocus()Z

    .line 244
    iget-object v6, p0, Lcom/android/internal/app/PlatLogoActivity;->mLayout:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/android/internal/app/PlatLogoActivity;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v6, v7, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    const-string v6, "PlatLogoActivity"

    const-string v7, "Hello"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v6, p0, Lcom/android/internal/app/PlatLogoActivity;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v6}, Lcom/android/internal/app/PlatLogoActivity;->setContentView(Landroid/view/View;)V

    .line 249
    return-void
.end method

.method protected whitelist onDestroy()V
    .registers 2

    .line 195
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mRumble:Lcom/android/internal/app/PlatLogoActivity$RumblePack;

    invoke-virtual {v0}, Lcom/android/internal/app/PlatLogoActivity$RumblePack;->destroy()V

    .line 197
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 198
    return-void
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 264
    const/16 v0, 0x3e

    if-ne p1, v0, :cond_f

    .line 265
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_d

    .line 266
    invoke-direct {p0}, Lcom/android/internal/app/PlatLogoActivity;->startWarp()V

    .line 268
    :cond_d
    const/4 v0, 0x1

    return v0

    .line 270
    :cond_f
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 275
    const/16 v0, 0x3e

    if-ne p1, v0, :cond_9

    .line 276
    invoke-direct {p0}, Lcom/android/internal/app/PlatLogoActivity;->stopWarp()V

    .line 277
    const/4 v0, 0x1

    return v0

    .line 279
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onPause()V
    .registers 1

    .line 309
    invoke-direct {p0}, Lcom/android/internal/app/PlatLogoActivity;->stopWarp()V

    .line 310
    invoke-direct {p0}, Lcom/android/internal/app/PlatLogoActivity;->stopAnimating()V

    .line 311
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 312
    return-void
.end method

.method public whitelist onResume()V
    .registers 1

    .line 303
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 304
    invoke-direct {p0}, Lcom/android/internal/app/PlatLogoActivity;->startAnimating()V

    .line 305
    return-void
.end method

.method public whitelist onStart()V
    .registers 1

    .line 392
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 393
    invoke-direct {p0}, Lcom/android/internal/app/PlatLogoActivity;->syncTouchPressure()V

    .line 394
    return-void
.end method

.method public whitelist onStop()V
    .registers 1

    .line 398
    invoke-direct {p0}, Lcom/android/internal/app/PlatLogoActivity;->syncTouchPressure()V

    .line 399
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 400
    return-void
.end method

.class public Landroid/widget/Toast;
.super Ljava/lang/Object;
.source "Toast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Toast$TN;,
        Landroid/widget/Toast$CallbackBinder;,
        Landroid/widget/Toast$Callback;,
        Landroid/widget/Toast$Duration;
    }
.end annotation


# static fields
.field private static final blacklist CHANGE_TEXT_TOASTS_IN_THE_SYSTEM:J = 0x8cf3b87L

.field public static final whitelist LENGTH_LONG:I = 0x1

.field public static final whitelist LENGTH_SHORT:I = 0x0

.field static final greylist-max-o TAG:Ljava/lang/String; = "Toast"

.field static final greylist-max-o localLOGV:Z = false

.field private static greylist-max-p sService:Landroid/app/INotificationManager;


# instance fields
.field private final blacklist mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/Toast$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mContext:Landroid/content/Context;

.field greylist mDuration:I

.field private final blacklist mHandler:Landroid/os/Handler;

.field private greylist-max-o mNextView:Landroid/view/View;

.field final greylist-max-p mTN:Landroid/widget/Toast$TN;

.field private blacklist mText:Ljava/lang/CharSequence;

.field private final blacklist mToken:Landroid/os/Binder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetService()Landroid/app/INotificationManager;
    .registers 1

    invoke-static {}, Landroid/widget/Toast;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    return-object v0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 164
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p1, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    .line 172
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/widget/Toast;->mToken:Landroid/os/Binder;

    .line 173
    invoke-direct {p0, p2}, Landroid/widget/Toast;->getLooper(Landroid/os/Looper;)Landroid/os/Looper;

    move-result-object v6

    .line 174
    .end local p2    # "looper":Landroid/os/Looper;
    .local v6, "looper":Landroid/os/Looper;
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Landroid/widget/Toast;->mHandler:Landroid/os/Handler;

    .line 175
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroid/widget/Toast;->mCallbacks:Ljava/util/List;

    .line 176
    new-instance v1, Landroid/widget/Toast$TN;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/Toast;->mToken:Landroid/os/Binder;

    iget-object v5, p0, Landroid/widget/Toast;->mCallbacks:Ljava/util/List;

    move-object v2, p1

    .end local p1    # "context":Landroid/content/Context;
    .local v2, "context":Landroid/content/Context;
    invoke-direct/range {v1 .. v6}, Landroid/widget/Toast$TN;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Binder;Ljava/util/List;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    .line 178
    iget-object p1, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x10503a4

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Landroid/widget/Toast$TN;->mY:I

    .line 180
    iget-object p1, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x10e014a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p1, Landroid/widget/Toast$TN;->mGravity:I

    .line 182
    return-void
.end method

.method private blacklist getLooper(Landroid/os/Looper;)Landroid/os/Looper;
    .registers 4
    .param p1, "looper"    # Landroid/os/Looper;

    .line 185
    if-eqz p1, :cond_3

    .line 186
    return-object p1

    .line 188
    :cond_3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    const-string v1, "Can\'t toast on a thread that has not called Looper.prepare()"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    return-object v0
.end method

.method private static greylist-max-p getService()Landroid/app/INotificationManager;
    .registers 1

    .line 620
    sget-object v0, Landroid/widget/Toast;->sService:Landroid/app/INotificationManager;

    if-eqz v0, :cond_7

    .line 621
    sget-object v0, Landroid/widget/Toast;->sService:Landroid/app/INotificationManager;

    return-object v0

    .line 623
    :cond_7
    nop

    .line 624
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 623
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    sput-object v0, Landroid/widget/Toast;->sService:Landroid/app/INotificationManager;

    .line 625
    sget-object v0, Landroid/widget/Toast;->sService:Landroid/app/INotificationManager;

    return-object v0
.end method

.method private blacklist isSystemRenderedTextToast()Z
    .registers 3

    .line 451
    const-wide/32 v0, 0x8cf3b87

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public static blacklist makeCustomToastWithIcon(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;)Landroid/widget/Toast;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "duration"    # I
    .param p4, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 542
    if-eqz p4, :cond_10

    .line 547
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 548
    .local v0, "result":Landroid/widget/Toast;
    invoke-static {p0, p2, p4}, Landroid/widget/ToastPresenter;->getTextToastViewWithIcon(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    .line 549
    iput p3, v0, Landroid/widget/Toast;->mDuration:I

    .line 550
    return-object v0

    .line 543
    .end local v0    # "result":Landroid/widget/Toast;
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Drawable icon should not be null for makeCustomToastWithIcon"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist makeText(Landroid/content/Context;II)Landroid/widget/Toast;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "duration"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 565
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "duration"    # I

    .line 518
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 520
    .local v0, "result":Landroid/widget/Toast;
    const-wide/32 v1, 0x8cf3b87

    invoke-static {v1, v2}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 521
    iput-object p2, v0, Landroid/widget/Toast;->mText:Ljava/lang/CharSequence;

    goto :goto_17

    .line 523
    :cond_11
    invoke-static {p0, p2}, Landroid/widget/ToastPresenter;->getTextToastView(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    .line 526
    :goto_17
    iput p3, v0, Landroid/widget/Toast;->mDuration:I

    .line 527
    return-object v0
.end method

.method public static whitelist makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "duration"    # I

    .line 507
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist addCallback(Landroid/widget/Toast$Callback;)V
    .registers 4
    .param p1, "callback"    # Landroid/widget/Toast$Callback;

    .line 462
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    iget-object v0, p0, Landroid/widget/Toast;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 464
    :try_start_6
    iget-object v1, p0, Landroid/widget/Toast;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    monitor-exit v0

    .line 466
    return-void

    .line 465
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public whitelist cancel()V
    .registers 4

    .line 254
    const-wide/32 v0, 0x8cf3b87

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-nez v0, :cond_1f

    .line 257
    :try_start_d
    invoke-static {}, Landroid/widget/Toast;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Toast;->mToken:Landroid/os/Binder;

    invoke-interface {v0, v1, v2}, Landroid/app/INotificationManager;->cancelToast(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1c} :catch_1d

    goto :goto_1e

    .line 258
    :catch_1d
    move-exception v0

    .line 260
    :goto_1e
    goto :goto_24

    .line 262
    :cond_1f
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-virtual {v0}, Landroid/widget/Toast$TN;->cancel()V

    .line 264
    :goto_24
    return-void
.end method

.method public whitelist getDuration()I
    .registers 2

    .line 323
    iget v0, p0, Landroid/widget/Toast;->mDuration:I

    return v0
.end method

.method public whitelist getGravity()I
    .registers 3

    .line 411
    invoke-direct {p0}, Landroid/widget/Toast;->isSystemRenderedTextToast()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 412
    const-string v0, "Toast"

    const-string v1, "getGravity() shouldn\'t be called on text toasts, the result may not reflect actual values."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_d
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget v0, v0, Landroid/widget/Toast$TN;->mGravity:I

    return v0
.end method

.method public whitelist getHorizontalMargin()F
    .registers 3

    .line 357
    invoke-direct {p0}, Landroid/widget/Toast;->isSystemRenderedTextToast()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 358
    const-string v0, "Toast"

    const-string v1, "getHorizontalMargin() shouldn\'t be called on text toasts, the result may not reflect actual values."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_d
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget v0, v0, Landroid/widget/Toast$TN;->mHorizontalMargin:F

    return v0
.end method

.method public blacklist getTn()Landroid/widget/Toast$TN;
    .registers 2

    .line 607
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    return-object v0
.end method

.method public whitelist getVerticalMargin()F
    .registers 3

    .line 373
    invoke-direct {p0}, Landroid/widget/Toast;->isSystemRenderedTextToast()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 374
    const-string v0, "Toast"

    const-string v1, "getVerticalMargin() shouldn\'t be called on text toasts, the result may not reflect actual values."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_d
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget v0, v0, Landroid/widget/Toast$TN;->mVerticalMargin:F

    return v0
.end method

.method public whitelist getView()Landroid/view/View;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 304
    iget-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    return-object v0
.end method

.method public greylist getWindowParams()Landroid/view/WindowManager$LayoutParams;
    .registers 3

    .line 483
    const-wide/32 v0, 0x8cf3b87

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 484
    iget-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-eqz v0, :cond_14

    .line 486
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-static {v0}, Landroid/widget/Toast$TN;->-$$Nest$fgetmParams(Landroid/widget/Toast$TN;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0

    .line 489
    :cond_14
    const/4 v0, 0x0

    return-object v0

    .line 493
    :cond_16
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-static {v0}, Landroid/widget/Toast$TN;->-$$Nest$fgetmParams(Landroid/widget/Toast$TN;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getXOffset()I
    .registers 3

    .line 427
    invoke-direct {p0}, Landroid/widget/Toast;->isSystemRenderedTextToast()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 428
    const-string v0, "Toast"

    const-string v1, "getXOffset() shouldn\'t be called on text toasts, the result may not reflect actual values."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_d
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget v0, v0, Landroid/widget/Toast$TN;->mX:I

    return v0
.end method

.method public whitelist getYOffset()I
    .registers 3

    .line 443
    invoke-direct {p0}, Landroid/widget/Toast;->isSystemRenderedTextToast()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 444
    const-string v0, "Toast"

    const-string v1, "getYOffset() shouldn\'t be called on text toasts, the result may not reflect actual values."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_d
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget v0, v0, Landroid/widget/Toast$TN;->mY:I

    return v0
.end method

.method public whitelist removeCallback(Landroid/widget/Toast$Callback;)V
    .registers 4
    .param p1, "callback"    # Landroid/widget/Toast$Callback;

    .line 472
    iget-object v0, p0, Landroid/widget/Toast;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 473
    :try_start_3
    iget-object v1, p0, Landroid/widget/Toast;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 474
    monitor-exit v0

    .line 475
    return-void

    .line 474
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public whitelist setDuration(I)V
    .registers 3
    .param p1, "duration"    # I

    .line 313
    iput p1, p0, Landroid/widget/Toast;->mDuration:I

    .line 314
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p1, v0, Landroid/widget/Toast$TN;->mDuration:I

    .line 315
    return-void
.end method

.method public whitelist setGravity(III)V
    .registers 6
    .param p1, "gravity"    # I
    .param p2, "xOffset"    # I
    .param p3, "yOffset"    # I

    .line 391
    invoke-direct {p0}, Landroid/widget/Toast;->isSystemRenderedTextToast()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 392
    const-string v0, "Toast"

    const-string/jumbo v1, "setGravity() shouldn\'t be called on text toasts, the values won\'t be used"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_e
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p1, v0, Landroid/widget/Toast$TN;->mGravity:I

    .line 395
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p2, v0, Landroid/widget/Toast$TN;->mX:I

    .line 396
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p3, v0, Landroid/widget/Toast$TN;->mY:I

    .line 397
    return-void
.end method

.method public whitelist setMargin(FF)V
    .registers 5
    .param p1, "horizontalMargin"    # F
    .param p2, "verticalMargin"    # F

    .line 341
    invoke-direct {p0}, Landroid/widget/Toast;->isSystemRenderedTextToast()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 342
    const-string v0, "Toast"

    const-string/jumbo v1, "setMargin() shouldn\'t be called on text toasts, the values won\'t be used"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_e
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p1, v0, Landroid/widget/Toast$TN;->mHorizontalMargin:F

    .line 345
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p2, v0, Landroid/widget/Toast$TN;->mVerticalMargin:F

    .line 346
    return-void
.end method

.method public whitelist setText(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 573
    iget-object v0, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 574
    return-void
.end method

.method public whitelist setText(Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;

    .line 581
    const-wide/32 v0, 0x8cf3b87

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 582
    iget-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-nez v0, :cond_10

    .line 587
    iput-object p1, p0, Landroid/widget/Toast;->mText:Ljava/lang/CharSequence;

    goto :goto_2e

    .line 583
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Text provided for custom toast, remove previous setView() calls if you want a text toast instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 589
    :cond_18
    iget-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    const-string v1, "This Toast was not created with Toast.makeText()"

    if-eqz v0, :cond_35

    .line 592
    iget-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    const v2, 0x102000b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 593
    .local v0, "tv":Landroid/widget/TextView;
    if-eqz v0, :cond_2f

    .line 596
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    .end local v0    # "tv":Landroid/widget/TextView;
    :goto_2e
    return-void

    .line 594
    .restart local v0    # "tv":Landroid/widget/TextView;
    :cond_2f
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 590
    .end local v0    # "tv":Landroid/widget/TextView;
    :cond_35
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setView(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 279
    iput-object p1, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    .line 280
    return-void
.end method

.method public whitelist show()V
    .registers 13

    .line 199
    const-wide/32 v0, 0x8cf3b87

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 200
    iget-object v2, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-nez v2, :cond_14

    iget-object v2, p0, Landroid/widget/Toast;->mText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_12

    goto :goto_14

    :cond_12
    const/4 v2, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v2, 0x1

    :goto_15
    const-string v3, "You must either set a text or a view"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    goto :goto_1f

    .line 202
    :cond_1b
    iget-object v2, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-eqz v2, :cond_bd

    .line 207
    :goto_1f
    invoke-static {}, Landroid/widget/Toast;->getService()Landroid/app/INotificationManager;

    move-result-object v3

    .line 208
    .local v3, "service":Landroid/app/INotificationManager;
    iget-object v2, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 209
    .local v4, "pkg":Ljava/lang/String;
    iget-object v6, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    .line 210
    .local v6, "tn":Landroid/widget/Toast$TN;
    invoke-static {}, Landroid/widget/flags/Flags;->toastNoWeakref()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 211
    iget-object v2, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    iput-object v2, v6, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    goto :goto_3f

    .line 213
    :cond_36
    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v5, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    invoke-direct {v2, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v6, Landroid/widget/Toast$TN;->mNextViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 215
    :goto_3f
    iget-object v2, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->isUiContext()Z

    move-result v8

    .line 216
    .local v8, "isUiContext":Z
    iget-object v2, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v9

    .line 218
    .local v9, "displayId":I
    const/4 v2, 0x0

    .line 220
    .local v2, "wasEnqueued":Z
    const/4 v11, 0x0

    :try_start_4d
    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_51} :catch_b2
    .catchall {:try_start_4d .. :try_end_51} :catchall_a4

    if-eqz v0, :cond_86

    .line 221
    :try_start_53
    iget-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-eqz v0, :cond_63

    .line 223
    iget-object v5, p0, Landroid/widget/Toast;->mToken:Landroid/os/Binder;

    iget v7, p0, Landroid/widget/Toast;->mDuration:I

    invoke-interface/range {v3 .. v9}, Landroid/app/INotificationManager;->enqueueToast(Ljava/lang/String;Landroid/os/IBinder;Landroid/app/ITransientNotification;IZI)Z

    move-result v0
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_5f} :catch_83
    .catchall {:try_start_53 .. :try_end_5f} :catchall_80

    move-object v1, v6

    .end local v6    # "tn":Landroid/widget/Toast$TN;
    .local v1, "tn":Landroid/widget/Toast$TN;
    move v2, v0

    move-object v6, v1

    .end local v2    # "wasEnqueued":Z
    .local v0, "wasEnqueued":Z
    goto :goto_91

    .line 227
    .end local v0    # "wasEnqueued":Z
    .end local v1    # "tn":Landroid/widget/Toast$TN;
    .restart local v2    # "wasEnqueued":Z
    .restart local v6    # "tn":Landroid/widget/Toast$TN;
    :cond_63
    move-object v1, v6

    .end local v6    # "tn":Landroid/widget/Toast$TN;
    .restart local v1    # "tn":Landroid/widget/Toast$TN;
    :try_start_64
    new-instance v10, Landroid/widget/Toast$CallbackBinder;

    iget-object v0, p0, Landroid/widget/Toast;->mCallbacks:Ljava/util/List;

    iget-object v5, p0, Landroid/widget/Toast;->mHandler:Landroid/os/Handler;

    invoke-direct {v10, v0, v5, v11}, Landroid/widget/Toast$CallbackBinder;-><init>(Ljava/util/List;Landroid/os/Handler;Landroid/widget/Toast-IA;)V

    .line 229
    .local v10, "callback":Landroid/app/ITransientNotificationCallback;
    iget-object v5, p0, Landroid/widget/Toast;->mToken:Landroid/os/Binder;

    iget-object v6, p0, Landroid/widget/Toast;->mText:Ljava/lang/CharSequence;

    iget v7, p0, Landroid/widget/Toast;->mDuration:I

    invoke-interface/range {v3 .. v10}, Landroid/app/INotificationManager;->enqueueTextToast(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;IZILandroid/app/ITransientNotificationCallback;)Z

    move-result v0
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_64 .. :try_end_77} :catch_7d
    .catchall {:try_start_64 .. :try_end_77} :catchall_7a

    .line 231
    .end local v2    # "wasEnqueued":Z
    .end local v10    # "callback":Landroid/app/ITransientNotificationCallback;
    .restart local v0    # "wasEnqueued":Z
    move v2, v0

    move-object v6, v1

    goto :goto_91

    .line 239
    .end local v0    # "wasEnqueued":Z
    .restart local v2    # "wasEnqueued":Z
    :catchall_7a
    move-exception v0

    move-object v6, v1

    goto :goto_a5

    .line 236
    :catch_7d
    move-exception v0

    move-object v6, v1

    goto :goto_b3

    .line 239
    .end local v1    # "tn":Landroid/widget/Toast$TN;
    .restart local v6    # "tn":Landroid/widget/Toast$TN;
    :catchall_80
    move-exception v0

    move-object v1, v6

    .end local v6    # "tn":Landroid/widget/Toast$TN;
    .restart local v1    # "tn":Landroid/widget/Toast$TN;
    goto :goto_a5

    .line 236
    .end local v1    # "tn":Landroid/widget/Toast$TN;
    .restart local v6    # "tn":Landroid/widget/Toast$TN;
    :catch_83
    move-exception v0

    move-object v1, v6

    .end local v6    # "tn":Landroid/widget/Toast$TN;
    .restart local v1    # "tn":Landroid/widget/Toast$TN;
    goto :goto_b3

    .line 233
    .end local v1    # "tn":Landroid/widget/Toast$TN;
    .restart local v6    # "tn":Landroid/widget/Toast$TN;
    :cond_86
    move-object v1, v6

    .end local v6    # "tn":Landroid/widget/Toast$TN;
    .restart local v1    # "tn":Landroid/widget/Toast$TN;
    :try_start_87
    iget-object v5, p0, Landroid/widget/Toast;->mToken:Landroid/os/Binder;

    iget v7, p0, Landroid/widget/Toast;->mDuration:I
    :try_end_8b
    .catch Landroid/os/RemoteException; {:try_start_87 .. :try_end_8b} :catch_a1
    .catchall {:try_start_87 .. :try_end_8b} :catchall_9e

    move-object v6, v1

    .end local v1    # "tn":Landroid/widget/Toast$TN;
    .restart local v6    # "tn":Landroid/widget/Toast$TN;
    :try_start_8c
    invoke-interface/range {v3 .. v9}, Landroid/app/INotificationManager;->enqueueToast(Ljava/lang/String;Landroid/os/IBinder;Landroid/app/ITransientNotification;IZI)Z

    move-result v0
    :try_end_90
    .catch Landroid/os/RemoteException; {:try_start_8c .. :try_end_90} :catch_b2
    .catchall {:try_start_8c .. :try_end_90} :catchall_a4

    move v2, v0

    .line 239
    :goto_91
    invoke-static {}, Landroid/widget/flags/Flags;->toastNoWeakref()Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 240
    if-nez v2, :cond_bc

    .line 241
    :goto_99
    iput-object v11, v6, Landroid/widget/Toast$TN;->mNextViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 242
    iput-object v11, v6, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    goto :goto_bc

    .line 239
    .end local v6    # "tn":Landroid/widget/Toast$TN;
    .restart local v1    # "tn":Landroid/widget/Toast$TN;
    :catchall_9e
    move-exception v0

    move-object v6, v1

    .end local v1    # "tn":Landroid/widget/Toast$TN;
    .restart local v6    # "tn":Landroid/widget/Toast$TN;
    goto :goto_a5

    .line 236
    .end local v6    # "tn":Landroid/widget/Toast$TN;
    .restart local v1    # "tn":Landroid/widget/Toast$TN;
    :catch_a1
    move-exception v0

    move-object v6, v1

    .end local v1    # "tn":Landroid/widget/Toast$TN;
    .restart local v6    # "tn":Landroid/widget/Toast$TN;
    goto :goto_b3

    .line 239
    :catchall_a4
    move-exception v0

    :goto_a5
    invoke-static {}, Landroid/widget/flags/Flags;->toastNoWeakref()Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 240
    if-nez v2, :cond_b1

    .line 241
    iput-object v11, v6, Landroid/widget/Toast$TN;->mNextViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 242
    iput-object v11, v6, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    .line 245
    :cond_b1
    throw v0

    .line 236
    :catch_b2
    move-exception v0

    .line 239
    :goto_b3
    invoke-static {}, Landroid/widget/flags/Flags;->toastNoWeakref()Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 240
    if-nez v2, :cond_bc

    .line 241
    goto :goto_99

    .line 246
    :cond_bc
    :goto_bc
    return-void

    .line 203
    .end local v2    # "wasEnqueued":Z
    .end local v3    # "service":Landroid/app/INotificationManager;
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v6    # "tn":Landroid/widget/Toast$TN;
    .end local v8    # "isUiContext":Z
    .end local v9    # "displayId":I
    :cond_bd
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "setView must have been called"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

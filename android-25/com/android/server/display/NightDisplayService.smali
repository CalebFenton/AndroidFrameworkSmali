.class public final Lcom/android/server/display/NightDisplayService;
.super Lcom/android/server/SystemService;
.source "NightDisplayService.java"

# interfaces
.implements Lcom/android/internal/app/NightDisplayController$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/NightDisplayService$1;,
        Lcom/android/server/display/NightDisplayService$AutoMode;,
        Lcom/android/server/display/NightDisplayService$ColorMatrixEvaluator;,
        Lcom/android/server/display/NightDisplayService$CustomAutoMode;,
        Lcom/android/server/display/NightDisplayService$TwilightAutoMode;
    }
.end annotation


# static fields
.field private static final COLOR_MATRIX_EVALUATOR:Lcom/android/server/display/NightDisplayService$ColorMatrixEvaluator;

.field private static final DEBUG:Z = false

.field private static final MATRIX_IDENTITY:[F

.field private static final MATRIX_NIGHT:[F

.field private static final TAG:Ljava/lang/String; = "NightDisplayService"


# instance fields
.field private mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

.field private mBootCompleted:Z

.field private mColorMatrixAnimator:Landroid/animation/ValueAnimator;

.field private mController:Lcom/android/internal/app/NightDisplayController;

.field private mCurrentUser:I

.field private final mHandler:Landroid/os/Handler;

.field private final mIgnoreAllColorMatrixChanges:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsActivated:Ljava/lang/Boolean;

.field private mUserSetupObserver:Landroid/database/ContentObserver;

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;


# direct methods
.method static synthetic -get0()[F
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/display/NightDisplayService;->MATRIX_IDENTITY:[F

    #@2
    return-object v0
.end method

.method static synthetic -get1()[F
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/display/NightDisplayService;->MATRIX_NIGHT:[F

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/display/NightDisplayService;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/display/NightDisplayService;->mBootCompleted:Z

    #@2
    return v0
.end method

.method static synthetic -get3(Lcom/android/server/display/NightDisplayService;)Landroid/animation/ValueAnimator;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/display/NightDisplayService;)Lcom/android/internal/app/NightDisplayController;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mController:Lcom/android/internal/app/NightDisplayController;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/display/NightDisplayService;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/display/NightDisplayService;->mCurrentUser:I

    #@2
    return v0
.end method

.method static synthetic -get6(Lcom/android/server/display/NightDisplayService;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/display/NightDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mIgnoreAllColorMatrixChanges:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/display/NightDisplayService;)Ljava/lang/Boolean;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mIsActivated:Ljava/lang/Boolean;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/display/NightDisplayService;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/display/NightDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/display/NightDisplayService;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/display/NightDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Landroid/content/ContentResolver;I)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "userHandle"    # I

    #@0
    .prologue
    invoke-static {p0, p1}, Lcom/android/server/display/NightDisplayService;->isUserSetupCompleted(Landroid/content/ContentResolver;I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/display/NightDisplayService;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/display/NightDisplayService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/display/NightDisplayService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/display/NightDisplayService;->setUp()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/16 v1, 0x10

    #@2
    .line 70
    new-array v0, v1, [F

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Lcom/android/server/display/NightDisplayService;->MATRIX_NIGHT:[F

    #@9
    .line 80
    new-array v0, v1, [F

    #@b
    sput-object v0, Lcom/android/server/display/NightDisplayService;->MATRIX_IDENTITY:[F

    #@d
    .line 82
    sget-object v0, Lcom/android/server/display/NightDisplayService;->MATRIX_IDENTITY:[F

    #@f
    const/4 v1, 0x0

    #@10
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    #@13
    .line 88
    new-instance v0, Lcom/android/server/display/NightDisplayService$ColorMatrixEvaluator;

    #@15
    const/4 v1, 0x0

    #@16
    invoke-direct {v0, v1}, Lcom/android/server/display/NightDisplayService$ColorMatrixEvaluator;-><init>(Lcom/android/server/display/NightDisplayService$ColorMatrixEvaluator;)V

    #@19
    sput-object v0, Lcom/android/server/display/NightDisplayService;->COLOR_MATRIX_EVALUATOR:Lcom/android/server/display/NightDisplayService$ColorMatrixEvaluator;

    #@1b
    .line 61
    return-void

    #@1c
    .line 70
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f410625    # 0.754f
        0x0
        0x0
        0x0
        0x0
        0x3f041893    # 0.516f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@3
    .line 91
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/display/NightDisplayService;->mIgnoreAllColorMatrixChanges:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@a
    .line 92
    new-instance v0, Lcom/android/server/display/NightDisplayService$1;

    #@c
    invoke-direct {v0, p0}, Lcom/android/server/display/NightDisplayService$1;-><init>(Lcom/android/server/display/NightDisplayService;)V

    #@f
    iput-object v0, p0, Lcom/android/server/display/NightDisplayService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    #@11
    .line 117
    const/16 v0, -0x2710

    #@13
    iput v0, p0, Lcom/android/server/display/NightDisplayService;->mCurrentUser:I

    #@15
    .line 128
    new-instance v0, Landroid/os/Handler;

    #@17
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@1e
    iput-object v0, p0, Lcom/android/server/display/NightDisplayService;->mHandler:Landroid/os/Handler;

    #@20
    .line 126
    return-void
.end method

.method private static isUserSetupCompleted(Landroid/content/ContentResolver;I)Z
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "userHandle"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 221
    const-string/jumbo v2, "user_setup_complete"

    #@5
    invoke-static {p0, v2, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@8
    move-result v2

    #@9
    if-ne v2, v0, :cond_0

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    move v0, v1

    #@d
    goto :goto_0
.end method

.method private onUserChanged(I)V
    .locals 5
    .param p1, "userHandle"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/16 v2, -0x2710

    #@3
    .line 184
    invoke-virtual {p0}, Lcom/android/server/display/NightDisplayService;->getContext()Landroid/content/Context;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@a
    move-result-object v0

    #@b
    .line 186
    .local v0, "cr":Landroid/content/ContentResolver;
    iget v1, p0, Lcom/android/server/display/NightDisplayService;->mCurrentUser:I

    #@d
    if-eq v1, v2, :cond_0

    #@f
    .line 187
    iget-object v1, p0, Lcom/android/server/display/NightDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    #@11
    if-eqz v1, :cond_2

    #@13
    .line 188
    iget-object v1, p0, Lcom/android/server/display/NightDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    #@15
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    #@18
    .line 189
    iput-object v3, p0, Lcom/android/server/display/NightDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    #@1a
    .line 195
    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/server/display/NightDisplayService;->mCurrentUser:I

    #@1c
    .line 197
    iget v1, p0, Lcom/android/server/display/NightDisplayService;->mCurrentUser:I

    #@1e
    if-eq v1, v2, :cond_1

    #@20
    .line 198
    iget v1, p0, Lcom/android/server/display/NightDisplayService;->mCurrentUser:I

    #@22
    invoke-static {v0, v1}, Lcom/android/server/display/NightDisplayService;->isUserSetupCompleted(Landroid/content/ContentResolver;I)Z

    #@25
    move-result v1

    #@26
    if-nez v1, :cond_3

    #@28
    .line 199
    new-instance v1, Lcom/android/server/display/NightDisplayService$2;

    #@2a
    iget-object v2, p0, Lcom/android/server/display/NightDisplayService;->mHandler:Landroid/os/Handler;

    #@2c
    invoke-direct {v1, p0, v2, v0}, Lcom/android/server/display/NightDisplayService$2;-><init>(Lcom/android/server/display/NightDisplayService;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    #@2f
    iput-object v1, p0, Lcom/android/server/display/NightDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    #@31
    .line 212
    const-string/jumbo v1, "user_setup_complete"

    #@34
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@37
    move-result-object v1

    #@38
    .line 213
    iget-object v2, p0, Lcom/android/server/display/NightDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    #@3a
    iget v3, p0, Lcom/android/server/display/NightDisplayService;->mCurrentUser:I

    #@3c
    const/4 v4, 0x0

    #@3d
    .line 212
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@40
    .line 183
    :cond_1
    :goto_1
    return-void

    #@41
    .line 190
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/display/NightDisplayService;->mBootCompleted:Z

    #@43
    if-eqz v1, :cond_0

    #@45
    .line 191
    invoke-direct {p0}, Lcom/android/server/display/NightDisplayService;->tearDown()V

    #@48
    goto :goto_0

    #@49
    .line 214
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/display/NightDisplayService;->mBootCompleted:Z

    #@4b
    if-eqz v1, :cond_1

    #@4d
    .line 215
    invoke-direct {p0}, Lcom/android/server/display/NightDisplayService;->setUp()V

    #@50
    goto :goto_1
.end method

.method private setUp()V
    .locals 3

    #@0
    .prologue
    .line 225
    const-string/jumbo v0, "NightDisplayService"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "setUp: currentUser="

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    iget v2, p0, Lcom/android/server/display/NightDisplayService;->mCurrentUser:I

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 228
    new-instance v0, Lcom/android/internal/app/NightDisplayController;

    #@1e
    invoke-virtual {p0}, Lcom/android/server/display/NightDisplayService;->getContext()Landroid/content/Context;

    #@21
    move-result-object v1

    #@22
    iget v2, p0, Lcom/android/server/display/NightDisplayService;->mCurrentUser:I

    #@24
    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/NightDisplayController;-><init>(Landroid/content/Context;I)V

    #@27
    iput-object v0, p0, Lcom/android/server/display/NightDisplayService;->mController:Lcom/android/internal/app/NightDisplayController;

    #@29
    .line 229
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mController:Lcom/android/internal/app/NightDisplayController;

    #@2b
    invoke-virtual {v0, p0}, Lcom/android/internal/app/NightDisplayController;->setListener(Lcom/android/internal/app/NightDisplayController$Callback;)V

    #@2e
    .line 232
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mController:Lcom/android/internal/app/NightDisplayController;

    #@30
    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->getAutoMode()I

    #@33
    move-result v0

    #@34
    invoke-virtual {p0, v0}, Lcom/android/server/display/NightDisplayService;->onAutoModeChanged(I)V

    #@37
    .line 235
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mIsActivated:Ljava/lang/Boolean;

    #@39
    if-nez v0, :cond_0

    #@3b
    .line 236
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mController:Lcom/android/internal/app/NightDisplayController;

    #@3d
    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->isActivated()Z

    #@40
    move-result v0

    #@41
    invoke-virtual {p0, v0}, Lcom/android/server/display/NightDisplayService;->onActivated(Z)V

    #@44
    .line 224
    :cond_0
    return-void
.end method

.method private tearDown()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 241
    const-string/jumbo v0, "NightDisplayService"

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "tearDown: currentUser="

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    iget v2, p0, Lcom/android/server/display/NightDisplayService;->mCurrentUser:I

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 243
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mController:Lcom/android/internal/app/NightDisplayController;

    #@1f
    if-eqz v0, :cond_0

    #@21
    .line 244
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mController:Lcom/android/internal/app/NightDisplayController;

    #@23
    invoke-virtual {v0, v3}, Lcom/android/internal/app/NightDisplayController;->setListener(Lcom/android/internal/app/NightDisplayController$Callback;)V

    #@26
    .line 245
    iput-object v3, p0, Lcom/android/server/display/NightDisplayService;->mController:Lcom/android/internal/app/NightDisplayController;

    #@28
    .line 248
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    #@2a
    if-eqz v0, :cond_1

    #@2c
    .line 249
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    #@2e
    invoke-virtual {v0}, Lcom/android/server/display/NightDisplayService$AutoMode;->onStop()V

    #@31
    .line 250
    iput-object v3, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    #@33
    .line 253
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    #@35
    if-eqz v0, :cond_2

    #@37
    .line 254
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    #@39
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    #@3c
    .line 255
    iput-object v3, p0, Lcom/android/server/display/NightDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    #@3e
    .line 258
    :cond_2
    iput-object v3, p0, Lcom/android/server/display/NightDisplayService;->mIsActivated:Ljava/lang/Boolean;

    #@40
    .line 240
    return-void
.end method


# virtual methods
.method public onActivated(Z)V
    .locals 7
    .param p1, "activated"    # Z

    #@0
    .prologue
    .line 263
    iget-object v3, p0, Lcom/android/server/display/NightDisplayService;->mIsActivated:Ljava/lang/Boolean;

    #@2
    if-eqz v3, :cond_0

    #@4
    iget-object v3, p0, Lcom/android/server/display/NightDisplayService;->mIsActivated:Ljava/lang/Boolean;

    #@6
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    #@9
    move-result v3

    #@a
    if-eq v3, p1, :cond_6

    #@c
    .line 264
    :cond_0
    const-string/jumbo v4, "NightDisplayService"

    #@f
    if-eqz p1, :cond_3

    #@11
    const-string/jumbo v3, "Turning on night display"

    #@14
    :goto_0
    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@17
    .line 266
    iget-object v3, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    #@19
    if-eqz v3, :cond_1

    #@1b
    .line 267
    iget-object v3, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    #@1d
    invoke-virtual {v3, p1}, Lcom/android/server/display/NightDisplayService$AutoMode;->onActivated(Z)V

    #@20
    .line 270
    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@23
    move-result-object v3

    #@24
    iput-object v3, p0, Lcom/android/server/display/NightDisplayService;->mIsActivated:Ljava/lang/Boolean;

    #@26
    .line 273
    iget-object v3, p0, Lcom/android/server/display/NightDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    #@28
    if-eqz v3, :cond_2

    #@2a
    .line 274
    iget-object v3, p0, Lcom/android/server/display/NightDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    #@2c
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    #@2f
    .line 278
    :cond_2
    iget-object v3, p0, Lcom/android/server/display/NightDisplayService;->mIgnoreAllColorMatrixChanges:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@31
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@34
    move-result v3

    #@35
    if-eqz v3, :cond_4

    #@37
    .line 279
    return-void

    #@38
    .line 264
    :cond_3
    const-string/jumbo v3, "Turning off night display"

    #@3b
    goto :goto_0

    #@3c
    .line 282
    :cond_4
    const-class v3, Lcom/android/server/display/DisplayTransformManager;

    #@3e
    invoke-virtual {p0, v3}, Lcom/android/server/display/NightDisplayService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    #@41
    move-result-object v0

    #@42
    check-cast v0, Lcom/android/server/display/DisplayTransformManager;

    #@44
    .line 283
    .local v0, "dtm":Lcom/android/server/display/DisplayTransformManager;
    const/16 v3, 0x64

    #@46
    invoke-virtual {v0, v3}, Lcom/android/server/display/DisplayTransformManager;->getColorMatrix(I)[F

    #@49
    move-result-object v1

    #@4a
    .line 284
    .local v1, "from":[F
    iget-object v3, p0, Lcom/android/server/display/NightDisplayService;->mIsActivated:Ljava/lang/Boolean;

    #@4c
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    #@4f
    move-result v3

    #@50
    if-eqz v3, :cond_7

    #@52
    sget-object v2, Lcom/android/server/display/NightDisplayService;->MATRIX_NIGHT:[F

    #@54
    .line 286
    :goto_1
    sget-object v4, Lcom/android/server/display/NightDisplayService;->COLOR_MATRIX_EVALUATOR:Lcom/android/server/display/NightDisplayService$ColorMatrixEvaluator;

    #@56
    const/4 v3, 0x2

    #@57
    new-array v5, v3, [Ljava/lang/Object;

    #@59
    .line 287
    if-nez v1, :cond_5

    #@5b
    sget-object v1, Lcom/android/server/display/NightDisplayService;->MATRIX_IDENTITY:[F

    #@5d
    .end local v1    # "from":[F
    :cond_5
    const/4 v3, 0x0

    #@5e
    aput-object v1, v5, v3

    #@60
    if-nez v2, :cond_8

    #@62
    sget-object v3, Lcom/android/server/display/NightDisplayService;->MATRIX_IDENTITY:[F

    #@64
    :goto_2
    const/4 v6, 0x1

    #@65
    aput-object v3, v5, v6

    #@67
    .line 286
    invoke-static {v4, v5}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    #@6a
    move-result-object v3

    #@6b
    iput-object v3, p0, Lcom/android/server/display/NightDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    #@6d
    .line 288
    iget-object v3, p0, Lcom/android/server/display/NightDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    #@6f
    invoke-virtual {p0}, Lcom/android/server/display/NightDisplayService;->getContext()Landroid/content/Context;

    #@72
    move-result-object v4

    #@73
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@76
    move-result-object v4

    #@77
    .line 289
    const v5, 0x10e0002

    #@7a
    .line 288
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    #@7d
    move-result v4

    #@7e
    int-to-long v4, v4

    #@7f
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    #@82
    .line 290
    iget-object v3, p0, Lcom/android/server/display/NightDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    #@84
    .line 291
    invoke-virtual {p0}, Lcom/android/server/display/NightDisplayService;->getContext()Landroid/content/Context;

    #@87
    move-result-object v4

    #@88
    const v5, 0x10c000d

    #@8b
    .line 290
    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    #@8e
    move-result-object v4

    #@8f
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@92
    .line 292
    iget-object v3, p0, Lcom/android/server/display/NightDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    #@94
    new-instance v4, Lcom/android/server/display/NightDisplayService$3;

    #@96
    invoke-direct {v4, p0, v0}, Lcom/android/server/display/NightDisplayService$3;-><init>(Lcom/android/server/display/NightDisplayService;Lcom/android/server/display/DisplayTransformManager;)V

    #@99
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@9c
    .line 299
    iget-object v3, p0, Lcom/android/server/display/NightDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    #@9e
    new-instance v4, Lcom/android/server/display/NightDisplayService$4;

    #@a0
    invoke-direct {v4, p0, v0, v2}, Lcom/android/server/display/NightDisplayService$4;-><init>(Lcom/android/server/display/NightDisplayService;Lcom/android/server/display/DisplayTransformManager;[F)V

    #@a3
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@a6
    .line 319
    iget-object v3, p0, Lcom/android/server/display/NightDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    #@a8
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    #@ab
    .line 262
    .end local v0    # "dtm":Lcom/android/server/display/DisplayTransformManager;
    :cond_6
    return-void

    #@ac
    .line 284
    .restart local v0    # "dtm":Lcom/android/server/display/DisplayTransformManager;
    .restart local v1    # "from":[F
    :cond_7
    const/4 v2, 0x0

    #@ad
    .local v2, "to":[F
    goto :goto_1

    #@ae
    .end local v1    # "from":[F
    .end local v2    # "to":[F
    :cond_8
    move-object v3, v2

    #@af
    .line 287
    goto :goto_2
.end method

.method public onAutoModeChanged(I)V
    .locals 4
    .param p1, "autoMode"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 325
    const-string/jumbo v0, "NightDisplayService"

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "onAutoModeChanged: autoMode="

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    .line 327
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    #@1d
    if-eqz v0, :cond_0

    #@1f
    .line 328
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    #@21
    invoke-virtual {v0}, Lcom/android/server/display/NightDisplayService$AutoMode;->onStop()V

    #@24
    .line 329
    iput-object v3, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    #@26
    .line 332
    :cond_0
    const/4 v0, 0x1

    #@27
    if-ne p1, v0, :cond_3

    #@29
    .line 333
    new-instance v0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;

    #@2b
    invoke-direct {v0, p0}, Lcom/android/server/display/NightDisplayService$CustomAutoMode;-><init>(Lcom/android/server/display/NightDisplayService;)V

    #@2e
    iput-object v0, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    #@30
    .line 338
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    #@32
    if-eqz v0, :cond_2

    #@34
    .line 339
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    #@36
    invoke-virtual {v0}, Lcom/android/server/display/NightDisplayService$AutoMode;->onStart()V

    #@39
    .line 324
    :cond_2
    return-void

    #@3a
    .line 334
    :cond_3
    const/4 v0, 0x2

    #@3b
    if-ne p1, v0, :cond_1

    #@3d
    .line 335
    new-instance v0, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;

    #@3f
    invoke-direct {v0, p0}, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;-><init>(Lcom/android/server/display/NightDisplayService;)V

    #@42
    iput-object v0, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    #@44
    goto :goto_0
.end method

.method public onBootPhase(I)V
    .locals 5
    .param p1, "phase"    # I

    #@0
    .prologue
    .line 138
    const/16 v2, 0x1f4

    #@2
    if-ne p1, v2, :cond_1

    #@4
    .line 140
    const-string/jumbo v2, "vrmanager"

    #@7
    invoke-virtual {p0, v2}, Lcom/android/server/display/NightDisplayService;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Landroid/service/vr/IVrManager;

    #@d
    .line 141
    .local v1, "vrManager":Landroid/service/vr/IVrManager;
    if-eqz v1, :cond_0

    #@f
    .line 143
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/NightDisplayService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    #@11
    invoke-interface {v1, v2}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 137
    .end local v1    # "vrManager":Landroid/service/vr/IVrManager;
    :cond_0
    :goto_0
    return-void

    #@15
    .line 144
    .restart local v1    # "vrManager":Landroid/service/vr/IVrManager;
    :catch_0
    move-exception v0

    #@16
    .line 145
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "NightDisplayService"

    #@19
    new-instance v3, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v4, "Failed to register VR mode state listener: "

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    goto :goto_0

    #@31
    .line 148
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "vrManager":Landroid/service/vr/IVrManager;
    :cond_1
    const/16 v2, 0x3e8

    #@33
    if-ne p1, v2, :cond_0

    #@35
    .line 149
    const/4 v2, 0x1

    #@36
    iput-boolean v2, p0, Lcom/android/server/display/NightDisplayService;->mBootCompleted:Z

    #@38
    .line 152
    iget v2, p0, Lcom/android/server/display/NightDisplayService;->mCurrentUser:I

    #@3a
    const/16 v3, -0x2710

    #@3c
    if-eq v2, v3, :cond_0

    #@3e
    iget-object v2, p0, Lcom/android/server/display/NightDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    #@40
    if-nez v2, :cond_0

    #@42
    .line 153
    invoke-direct {p0}, Lcom/android/server/display/NightDisplayService;->setUp()V

    #@45
    goto :goto_0
.end method

.method public onCustomEndTimeChanged(Lcom/android/internal/app/NightDisplayController$LocalTime;)V
    .locals 3
    .param p1, "endTime"    # Lcom/android/internal/app/NightDisplayController$LocalTime;

    #@0
    .prologue
    .line 354
    const-string/jumbo v0, "NightDisplayService"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "onCustomEndTimeChanged: endTime="

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 356
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    #@1c
    if-eqz v0, :cond_0

    #@1e
    .line 357
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    #@20
    invoke-virtual {v0, p1}, Lcom/android/server/display/NightDisplayService$AutoMode;->onCustomEndTimeChanged(Lcom/android/internal/app/NightDisplayController$LocalTime;)V

    #@23
    .line 353
    :cond_0
    return-void
.end method

.method public onCustomStartTimeChanged(Lcom/android/internal/app/NightDisplayController$LocalTime;)V
    .locals 3
    .param p1, "startTime"    # Lcom/android/internal/app/NightDisplayController$LocalTime;

    #@0
    .prologue
    .line 345
    const-string/jumbo v0, "NightDisplayService"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "onCustomStartTimeChanged: startTime="

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 347
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    #@1c
    if-eqz v0, :cond_0

    #@1e
    .line 348
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    #@20
    invoke-virtual {v0, p1}, Lcom/android/server/display/NightDisplayService$AutoMode;->onCustomStartTimeChanged(Lcom/android/internal/app/NightDisplayController$LocalTime;)V

    #@23
    .line 344
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    #@0
    .prologue
    .line 132
    return-void
.end method

.method public onStartUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 160
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onStartUser(I)V

    #@3
    .line 162
    iget v0, p0, Lcom/android/server/display/NightDisplayService;->mCurrentUser:I

    #@5
    const/16 v1, -0x2710

    #@7
    if-ne v0, v1, :cond_0

    #@9
    .line 163
    invoke-direct {p0, p1}, Lcom/android/server/display/NightDisplayService;->onUserChanged(I)V

    #@c
    .line 159
    :cond_0
    return-void
.end method

.method public onStopUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 176
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onStopUser(I)V

    #@3
    .line 178
    iget v0, p0, Lcom/android/server/display/NightDisplayService;->mCurrentUser:I

    #@5
    if-ne v0, p1, :cond_0

    #@7
    .line 179
    const/16 v0, -0x2710

    #@9
    invoke-direct {p0, v0}, Lcom/android/server/display/NightDisplayService;->onUserChanged(I)V

    #@c
    .line 175
    :cond_0
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 0
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 169
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onSwitchUser(I)V

    #@3
    .line 171
    invoke-direct {p0, p1}, Lcom/android/server/display/NightDisplayService;->onUserChanged(I)V

    #@6
    .line 168
    return-void
.end method

.class Landroid/os/SystemVibratorManager$VendorVibrationSessionCallbackDelegate;
.super Landroid/os/vibrator/IVibrationSessionCallback$Stub;
.source "SystemVibratorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemVibratorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VendorVibrationSessionCallbackDelegate"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/os/vibrator/VendorVibrationSession$Callback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$P2hRPLPvJwe5A7zdzPp_z04W_FA(Landroid/os/SystemVibratorManager$VendorVibrationSessionCallbackDelegate;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/SystemVibratorManager$VendorVibrationSessionCallbackDelegate;->lambda$onFinished$2(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$qYY7UqyM4G9yI3opogUAamlGf10(Landroid/os/SystemVibratorManager$VendorVibrationSessionCallbackDelegate;)V
    .registers 1

    invoke-direct {p0}, Landroid/os/SystemVibratorManager$VendorVibrationSessionCallbackDelegate;->lambda$onFinishing$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$uZeaOixgTRaC3sq1ctGxBAhJf0g(Landroid/os/SystemVibratorManager$VendorVibrationSessionCallbackDelegate;Landroid/os/vibrator/IVibrationSession;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/SystemVibratorManager$VendorVibrationSessionCallbackDelegate;->lambda$onStarted$0(Landroid/os/vibrator/IVibrationSession;)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/os/vibrator/VendorVibrationSession$Callback;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/os/vibrator/VendorVibrationSession$Callback;

    .line 294
    invoke-direct {p0}, Landroid/os/vibrator/IVibrationSessionCallback$Stub;-><init>()V

    .line 295
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iput-object p1, p0, Landroid/os/SystemVibratorManager$VendorVibrationSessionCallbackDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    .line 298
    iput-object p2, p0, Landroid/os/SystemVibratorManager$VendorVibrationSessionCallbackDelegate;->mCallback:Landroid/os/vibrator/VendorVibrationSession$Callback;

    .line 299
    return-void
.end method

.method private synthetic blacklist lambda$onFinished$2(I)V
    .registers 3
    .param p1, "status"    # I

    .line 313
    iget-object v0, p0, Landroid/os/SystemVibratorManager$VendorVibrationSessionCallbackDelegate;->mCallback:Landroid/os/vibrator/VendorVibrationSession$Callback;

    invoke-interface {v0, p1}, Landroid/os/vibrator/VendorVibrationSession$Callback;->onFinished(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onFinishing$1()V
    .registers 2

    .line 308
    iget-object v0, p0, Landroid/os/SystemVibratorManager$VendorVibrationSessionCallbackDelegate;->mCallback:Landroid/os/vibrator/VendorVibrationSession$Callback;

    invoke-interface {v0}, Landroid/os/vibrator/VendorVibrationSession$Callback;->onFinishing()V

    return-void
.end method

.method private synthetic blacklist lambda$onStarted$0(Landroid/os/vibrator/IVibrationSession;)V
    .registers 4
    .param p1, "session"    # Landroid/os/vibrator/IVibrationSession;

    .line 303
    iget-object v0, p0, Landroid/os/SystemVibratorManager$VendorVibrationSessionCallbackDelegate;->mCallback:Landroid/os/vibrator/VendorVibrationSession$Callback;

    new-instance v1, Landroid/os/vibrator/VendorVibrationSession;

    invoke-direct {v1, p1}, Landroid/os/vibrator/VendorVibrationSession;-><init>(Landroid/os/vibrator/IVibrationSession;)V

    invoke-interface {v0, v1}, Landroid/os/vibrator/VendorVibrationSession$Callback;->onStarted(Landroid/os/vibrator/VendorVibrationSession;)V

    return-void
.end method


# virtual methods
.method public blacklist onFinished(I)V
    .registers 4
    .param p1, "status"    # I

    .line 313
    iget-object v0, p0, Landroid/os/SystemVibratorManager$VendorVibrationSessionCallbackDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/os/SystemVibratorManager$VendorVibrationSessionCallbackDelegate$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/os/SystemVibratorManager$VendorVibrationSessionCallbackDelegate$$ExternalSyntheticLambda2;-><init>(Landroid/os/SystemVibratorManager$VendorVibrationSessionCallbackDelegate;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 314
    return-void
.end method

.method public blacklist onFinishing()V
    .registers 3

    .line 308
    iget-object v0, p0, Landroid/os/SystemVibratorManager$VendorVibrationSessionCallbackDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/os/SystemVibratorManager$VendorVibrationSessionCallbackDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/os/SystemVibratorManager$VendorVibrationSessionCallbackDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/os/SystemVibratorManager$VendorVibrationSessionCallbackDelegate;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 309
    return-void
.end method

.method public blacklist onStarted(Landroid/os/vibrator/IVibrationSession;)V
    .registers 4
    .param p1, "session"    # Landroid/os/vibrator/IVibrationSession;

    .line 303
    iget-object v0, p0, Landroid/os/SystemVibratorManager$VendorVibrationSessionCallbackDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/os/SystemVibratorManager$VendorVibrationSessionCallbackDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/os/SystemVibratorManager$VendorVibrationSessionCallbackDelegate$$ExternalSyntheticLambda1;-><init>(Landroid/os/SystemVibratorManager$VendorVibrationSessionCallbackDelegate;Landroid/os/vibrator/IVibrationSession;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 304
    return-void
.end method

.class Landroid/os/SystemVibratorManager$OnVibratorStateChangedListenerDelegate;
.super Landroid/os/IVibratorStateListener$Stub;
.source "SystemVibratorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemVibratorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnVibratorStateChangedListenerDelegate"
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mListener:Landroid/os/Vibrator$OnVibratorStateChangedListener;


# direct methods
.method public static synthetic blacklist $r8$lambda$mXNnCpEdZCmTzNjir6Jk-w0e-rw(Landroid/os/SystemVibratorManager$OnVibratorStateChangedListenerDelegate;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/SystemVibratorManager$OnVibratorStateChangedListenerDelegate;->lambda$onVibrating$0(Z)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Vibrator$OnVibratorStateChangedListener;Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "listener"    # Landroid/os/Vibrator$OnVibratorStateChangedListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 275
    invoke-direct {p0}, Landroid/os/IVibratorStateListener$Stub;-><init>()V

    .line 276
    iput-object p2, p0, Landroid/os/SystemVibratorManager$OnVibratorStateChangedListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    .line 277
    iput-object p1, p0, Landroid/os/SystemVibratorManager$OnVibratorStateChangedListenerDelegate;->mListener:Landroid/os/Vibrator$OnVibratorStateChangedListener;

    .line 278
    return-void
.end method

.method private synthetic blacklist lambda$onVibrating$0(Z)V
    .registers 3
    .param p1, "isVibrating"    # Z

    .line 282
    iget-object v0, p0, Landroid/os/SystemVibratorManager$OnVibratorStateChangedListenerDelegate;->mListener:Landroid/os/Vibrator$OnVibratorStateChangedListener;

    invoke-interface {v0, p1}, Landroid/os/Vibrator$OnVibratorStateChangedListener;->onVibratorStateChanged(Z)V

    return-void
.end method


# virtual methods
.method public blacklist onVibrating(Z)V
    .registers 4
    .param p1, "isVibrating"    # Z

    .line 282
    iget-object v0, p0, Landroid/os/SystemVibratorManager$OnVibratorStateChangedListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/os/SystemVibratorManager$OnVibratorStateChangedListenerDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/os/SystemVibratorManager$OnVibratorStateChangedListenerDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/os/SystemVibratorManager$OnVibratorStateChangedListenerDelegate;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 283
    return-void
.end method

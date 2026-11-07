.class Landroid/app/KeyguardManager$1;
.super Lcom/android/internal/policy/IKeyguardLockedStateListener$Stub;
.source "KeyguardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/KeyguardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/KeyguardManager;


# direct methods
.method constructor blacklist <init>(Landroid/app/KeyguardManager;)V
    .registers 2
    .param p1, "this$0"    # Landroid/app/KeyguardManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 255
    iput-object p1, p0, Landroid/app/KeyguardManager$1;->this$0:Landroid/app/KeyguardManager;

    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardLockedStateListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onKeyguardLockedStateChanged$0(Landroid/app/KeyguardManager$KeyguardLockedStateListener;Z)V
    .registers 2
    .param p0, "listener"    # Landroid/app/KeyguardManager$KeyguardLockedStateListener;
    .param p1, "isKeyguardLocked"    # Z

    .line 260
    invoke-interface {p0, p1}, Landroid/app/KeyguardManager$KeyguardLockedStateListener;->onKeyguardLockedStateChanged(Z)V

    return-void
.end method

.method static synthetic blacklist lambda$onKeyguardLockedStateChanged$1(ZLandroid/app/KeyguardManager$KeyguardLockedStateListener;Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p0, "isKeyguardLocked"    # Z
    .param p1, "listener"    # Landroid/app/KeyguardManager$KeyguardLockedStateListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 259
    new-instance v0, Landroid/app/KeyguardManager$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p0}, Landroid/app/KeyguardManager$1$$ExternalSyntheticLambda1;-><init>(Landroid/app/KeyguardManager$KeyguardLockedStateListener;Z)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 261
    return-void
.end method


# virtual methods
.method public blacklist onKeyguardLockedStateChanged(Z)V
    .registers 4
    .param p1, "isKeyguardLocked"    # Z

    .line 258
    iget-object v0, p0, Landroid/app/KeyguardManager$1;->this$0:Landroid/app/KeyguardManager;

    invoke-static {v0}, Landroid/app/KeyguardManager;->-$$Nest$fgetmKeyguardLockedStateListeners(Landroid/app/KeyguardManager;)Landroid/util/ArrayMap;

    move-result-object v0

    new-instance v1, Landroid/app/KeyguardManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroid/app/KeyguardManager$1$$ExternalSyntheticLambda0;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 262
    return-void
.end method

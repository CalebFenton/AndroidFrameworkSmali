.class Landroid/os/PowerManager$3;
.super Landroid/os/IScreenTimeoutPolicyListener$Stub;
.source "PowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/PowerManager;->addScreenTimeoutPolicyListener(ILjava/util/concurrent/Executor;Landroid/os/PowerManager$ScreenTimeoutPolicyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$listener:Landroid/os/PowerManager$ScreenTimeoutPolicyListener;


# direct methods
.method constructor blacklist <init>(Landroid/os/PowerManager;Ljava/util/concurrent/Executor;Landroid/os/PowerManager$ScreenTimeoutPolicyListener;)V
    .registers 4
    .param p1, "this$0"    # Landroid/os/PowerManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1826
    iput-object p2, p0, Landroid/os/PowerManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/os/PowerManager$3;->val$listener:Landroid/os/PowerManager$ScreenTimeoutPolicyListener;

    invoke-direct {p0}, Landroid/os/IScreenTimeoutPolicyListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onScreenTimeoutPolicyChanged$0(Landroid/os/PowerManager$ScreenTimeoutPolicyListener;I)V
    .registers 2
    .param p0, "listener"    # Landroid/os/PowerManager$ScreenTimeoutPolicyListener;
    .param p1, "screenTimeoutPolicy"    # I

    .line 1831
    invoke-interface {p0, p1}, Landroid/os/PowerManager$ScreenTimeoutPolicyListener;->onScreenTimeoutPolicyChanged(I)V

    return-void
.end method


# virtual methods
.method public blacklist onScreenTimeoutPolicyChanged(I)V
    .registers 7
    .param p1, "screenTimeoutPolicy"    # I

    .line 1828
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1830
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Landroid/os/PowerManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/os/PowerManager$3;->val$listener:Landroid/os/PowerManager$ScreenTimeoutPolicyListener;

    new-instance v4, Landroid/os/PowerManager$3$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, p1}, Landroid/os/PowerManager$3$$ExternalSyntheticLambda0;-><init>(Landroid/os/PowerManager$ScreenTimeoutPolicyListener;I)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_15

    .line 1833
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1834
    nop

    .line 1835
    return-void

    .line 1833
    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1834
    throw v2
.end method

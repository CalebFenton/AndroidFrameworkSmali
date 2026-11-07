.class Landroid/os/PowerManager$4;
.super Landroid/os/IThermalStatusListener$Stub;
.source "PowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/PowerManager;->addThermalStatusListener(Ljava/util/concurrent/Executor;Landroid/os/PowerManager$OnThermalStatusChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$listener:Landroid/os/PowerManager$OnThermalStatusChangedListener;


# direct methods
.method constructor blacklist <init>(Landroid/os/PowerManager;Ljava/util/concurrent/Executor;Landroid/os/PowerManager$OnThermalStatusChangedListener;)V
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

    .line 2890
    iput-object p2, p0, Landroid/os/PowerManager$4;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/os/PowerManager$4;->val$listener:Landroid/os/PowerManager$OnThermalStatusChangedListener;

    invoke-direct {p0}, Landroid/os/IThermalStatusListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onStatusChange$0(Landroid/os/PowerManager$OnThermalStatusChangedListener;I)V
    .registers 2
    .param p0, "listener"    # Landroid/os/PowerManager$OnThermalStatusChangedListener;
    .param p1, "status"    # I

    .line 2895
    invoke-interface {p0, p1}, Landroid/os/PowerManager$OnThermalStatusChangedListener;->onThermalStatusChanged(I)V

    return-void
.end method


# virtual methods
.method public blacklist onStatusChange(I)V
    .registers 7
    .param p1, "status"    # I

    .line 2893
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2895
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Landroid/os/PowerManager$4;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/os/PowerManager$4;->val$listener:Landroid/os/PowerManager$OnThermalStatusChangedListener;

    new-instance v4, Landroid/os/PowerManager$4$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, p1}, Landroid/os/PowerManager$4$$ExternalSyntheticLambda0;-><init>(Landroid/os/PowerManager$OnThermalStatusChangedListener;I)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_15

    .line 2897
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2898
    nop

    .line 2899
    return-void

    .line 2897
    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2898
    throw v2
.end method

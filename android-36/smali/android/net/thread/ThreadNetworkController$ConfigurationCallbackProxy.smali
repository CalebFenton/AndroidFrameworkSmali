.class final Landroid/net/thread/ThreadNetworkController$ConfigurationCallbackProxy;
.super Landroid/net/connectivity/android/net/thread/IConfigurationReceiver$Stub;
.source "ThreadNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/thread/ThreadNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConfigurationCallbackProxy"
.end annotation


# instance fields
.field final blacklist mConfigurationConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/net/thread/ThreadConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$PlZR7sB98-_SMXXxiY5yijW2o9Q(Landroid/net/thread/ThreadNetworkController$ConfigurationCallbackProxy;Landroid/net/thread/ThreadConfiguration;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/thread/ThreadNetworkController$ConfigurationCallbackProxy;->lambda$onConfigurationChanged$0(Landroid/net/thread/ThreadConfiguration;)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/net/thread/ThreadConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 1023
    .local p2, "ConfigurationConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/thread/ThreadConfiguration;>;"
    invoke-direct {p0}, Landroid/net/connectivity/android/net/thread/IConfigurationReceiver$Stub;-><init>()V

    .line 1024
    iput-object p1, p0, Landroid/net/thread/ThreadNetworkController$ConfigurationCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1025
    iput-object p2, p0, Landroid/net/thread/ThreadNetworkController$ConfigurationCallbackProxy;->mConfigurationConsumer:Ljava/util/function/Consumer;

    .line 1026
    return-void
.end method

.method private synthetic blacklist lambda$onConfigurationChanged$0(Landroid/net/thread/ThreadConfiguration;)V
    .registers 3
    .param p1, "configuration"    # Landroid/net/thread/ThreadConfiguration;

    .line 1032
    iget-object v0, p0, Landroid/net/thread/ThreadNetworkController$ConfigurationCallbackProxy;->mConfigurationConsumer:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onConfigurationChanged(Landroid/net/thread/ThreadConfiguration;)V
    .registers 6
    .param p1, "configuration"    # Landroid/net/thread/ThreadConfiguration;

    .line 1030
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1032
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Landroid/net/thread/ThreadNetworkController$ConfigurationCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/thread/ThreadNetworkController$ConfigurationCallbackProxy$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Landroid/net/thread/ThreadNetworkController$ConfigurationCallbackProxy$$ExternalSyntheticLambda0;-><init>(Landroid/net/thread/ThreadNetworkController$ConfigurationCallbackProxy;Landroid/net/thread/ThreadConfiguration;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 1034
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1035
    nop

    .line 1036
    return-void

    .line 1034
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1035
    throw v2
.end method

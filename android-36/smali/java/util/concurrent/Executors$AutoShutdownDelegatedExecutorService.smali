.class Ljava/util/concurrent/Executors$AutoShutdownDelegatedExecutorService;
.super Ljava/util/concurrent/Executors$DelegatedExecutorService;
.source "Executors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/Executors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AutoShutdownDelegatedExecutorService"
.end annotation


# instance fields
.field private final blacklist cleanable:Ljava/lang/ref/Cleaner$Cleanable;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/ExecutorService;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/ExecutorService;

    .line 795
    invoke-direct {p0, p1}, Ljava/util/concurrent/Executors$DelegatedExecutorService;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 796
    new-instance v0, Ljava/util/concurrent/Executors$AutoShutdownDelegatedExecutorService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Ljava/util/concurrent/Executors$AutoShutdownDelegatedExecutorService$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 803
    .local v0, "action":Ljava/lang/Runnable;
    invoke-static {}, Ljdk/internal/ref/CleanerFactory;->cleaner()Ljava/lang/ref/Cleaner;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Ljava/lang/ref/Cleaner;->register(Ljava/lang/Object;Ljava/lang/Runnable;)Ljava/lang/ref/Cleaner$Cleanable;

    move-result-object v1

    iput-object v1, p0, Ljava/util/concurrent/Executors$AutoShutdownDelegatedExecutorService;->cleanable:Ljava/lang/ref/Cleaner$Cleanable;

    .line 804
    return-void
.end method

.method static synthetic blacklist lambda$new$0(Ljava/util/concurrent/ExecutorService;)Ljava/lang/Void;
    .registers 2
    .param p0, "executor"    # Ljava/util/concurrent/ExecutorService;

    .line 798
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic blacklist lambda$new$1(Ljava/util/concurrent/ExecutorService;)V
    .registers 3
    .param p0, "executor"    # Ljava/util/concurrent/ExecutorService;

    .line 797
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_11

    .line 798
    new-instance v0, Ljava/util/concurrent/Executors$AutoShutdownDelegatedExecutorService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Ljava/util/concurrent/Executors$AutoShutdownDelegatedExecutorService$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 800
    .local v0, "pa":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<Ljava/lang/Void;>;"
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Void;

    .line 802
    .end local v0    # "pa":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<Ljava/lang/Void;>;"
    :cond_11
    return-void
.end method


# virtual methods
.method public whitelist test-api shutdown()V
    .registers 2

    .line 807
    invoke-super {p0}, Ljava/util/concurrent/Executors$DelegatedExecutorService;->shutdown()V

    .line 808
    iget-object v0, p0, Ljava/util/concurrent/Executors$AutoShutdownDelegatedExecutorService;->cleanable:Ljava/lang/ref/Cleaner$Cleanable;

    invoke-interface {v0}, Ljava/lang/ref/Cleaner$Cleanable;->clean()V

    .line 809
    return-void
.end method

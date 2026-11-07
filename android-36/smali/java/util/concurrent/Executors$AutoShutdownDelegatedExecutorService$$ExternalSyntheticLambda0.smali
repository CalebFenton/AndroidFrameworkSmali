.class public final synthetic Ljava/util/concurrent/Executors$AutoShutdownDelegatedExecutorService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/concurrent/ExecutorService;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/concurrent/Executors$AutoShutdownDelegatedExecutorService$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Ljava/util/concurrent/Executors$AutoShutdownDelegatedExecutorService$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0}, Ljava/util/concurrent/Executors$AutoShutdownDelegatedExecutorService;->lambda$new$1(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method
